#include "handler.h"
#include "common.h"
#include "gecko.h"
#include "handler.h"
#include "pre.h"
#include "settings.h"
#include "utils.h"

#include <ESP8266WebServer.h>
extern ESP8266WebServer server;
extern String HostName;

using namespace std;

namespace {

String getContentType(const String& filename)
{
    if (filename.endsWith(".html")) {
        return F("text/html");
    } else if (filename.endsWith(".css")) {
        return F("text/css");
    } else if (filename.endsWith(".json")) {
        return F("application/json");
    } else if (filename.endsWith(".js")) {
        return F("application/javascript");
    } else if (filename.endsWith(".ico")) {
        return F("image/x-icon");
    } else if (filename.endsWith(".jpg")) {
        return F("image/jpeg");
    } else if (filename.endsWith(".bmp")) {
        return F("image/bmp");
    }
    return F("text/plain");
}

} // anonymous namespace

Handler::Handler(Gecko& gecko, Settings& settings)
    : m_gecko(gecko)
    , m_settings(settings)
{
}

bool Handler::handleResetESP() const
{
    server.send(200, F("text/plain"), "1");

    delay(200);
    ESP.reset();
    return true;
}

bool Handler::handleResetSettings() const
{
    server.send(200, F("text/plain"), "1");

    m_settings.deleteFile();
    delay(200);
    ESP.reset();
    return true;
}

bool Handler::handleResetWiFi() const
{
    server.send(200, F("text/plain"), "1");

    delay(200);
    WiFi.disconnect();
    delay(200);
    ESP.reset();
    return true;
}

bool Handler::handleResetAll() const
{
    server.send(200, F("text/plain"), "1");

    m_settings.deleteFile();
    delay(200);
    WiFi.disconnect();
    delay(200);
    ESP.reset();
    return true;
}

bool Handler::handleGetVersion() const
{
    server.send(200, F("text/plain"), VERSION);
    return true;
}

bool Handler::handleGetName() const
{
    server.send(200, F("text/plain"), HostName);
    return true;
}

bool Handler::handleGetPrice()
{
    gecko_t price;
    gecko_t price2;
    gecko_t change_pct;
    m_gecko.price(price, price2, change_pct);

    String result;
    formatNumber(price, result, m_settings.numberFormat(), false, true);
    String ret;
    ret = m_settings.symbol();
    ret += F(": ");
    ret += result;
    ret += getCurrencySymbol(m_settings.currency());
    server.send(200, F("text/plain"), ret);
    return true;
}

bool Handler::handleForUpdate() const
{
    server.send(200, F("text/plain"), "1");

    // if file exists on startup, ESP goes into update mode
    File f = SPIFFS.open(FOR_UPDATE_FILE, "w");
    f.close();

    delay(200);
    ESP.reset();
    return true;
}

bool Handler::streamFile(const char* filename)
{
    String contentType = getContentType(filename);
    if (SPIFFS.exists(filename)) {
        File file = SPIFFS.open(filename, "r");
        server.sendHeader(F("Access-Control-Allow-Origin"), "*");
        server.streamFile(file, contentType);
        file.close();
        return true;
    }
    return false;
}

bool Handler::handleSet() const
{
#if COIN_THING_SERIAL > 0
    Serial.printf("handleAction: set - parsed Query:\n");
    for (int ii = 0; ii < server.args(); ++ii) {
        Serial.print(server.argName(ii));
        Serial.print(" -> ");
        Serial.println(server.arg(ii));
    }
#endif

    if (server.hasArg(F("brightness"))) {
        server.send(200, F("text/plain"), server.arg(F("brightness")).c_str());
        m_settings.setBrightness(static_cast<uint8_t>(server.arg(F("brightness")).toInt()));
    } else if (server.hasArg(F("json"))) {
        // m_settings.set(m_gecko, server.arg(F("json")).c_str());
        SettingsV12 settings;
        settings.set(server.arg(F("json")).c_str());
    } else {
    }

    streamFile(SETTINGS_FILE);
    return true;
}

#if 0
bool Handler::handleSet() const
{
#if COIN_THING_SERIAL > 0
    Serial.printf("handleAction: set - parsed Query:\n");
    for (int ii = 0; ii < server.args(); ++ii) {
        Serial.print(server.argName(ii));
        Serial.print(" -> ");
        Serial.println(server.arg(ii));
    }
#endif

    if (server.hasArg(F("brightness"))) {
        server.send(200, F("text/plain"), server.arg(F("brightness")).c_str());
        m_settings.setBrightness(static_cast<uint8_t>(server.arg(F("brightness")).toInt()));
    } else {
        Settings::Status status(m_settings.set(m_gecko,
            server.arg(F("coin")).c_str(),
            server.arg(F("currency")).c_str(),
            server.arg(F("currency2")).c_str(),
            static_cast<uint8_t>(server.arg(F("number_format")).toInt()),
            static_cast<uint8_t>(server.arg(F("chart_period")).toInt()),
            static_cast<uint8_t>(server.arg(F("chart_swap_interval")).toInt()),
            static_cast<uint8_t>(server.arg(F("chart_style")).toInt()),
            server.arg(F("heartbeat")).toInt() != 0));

        String error;
        switch (status) {
        case Settings::Status::OK:
            if (!streamFile(SETTINGS_FILE)) {
                error = F(R"({"error":"file 'settings.json' not found!"})");
            }
            break;
        case Settings::Status::COIN_INVALID:
            error = F(R"({"error":"Coin ID ')");
            error += server.arg(F("coin"));
            error += F(R"(' is invalid!"})");
            break;
        case Settings::Status::CURRENCY_INVALID:
            error = F(R"({"error":"Currency ')");
            error += server.arg(F("currency"));
            error += F(R"(' is invalid!"})");
            break;
        case Settings::Status::CURRENCY2_INVALID:
            error = F(R"({"error":"2nd currency ')");
            error += server.arg(F("currency2"));
            error += F(R"(' is invalid!"})");
            break;
        }

        if (!error.isEmpty()) {
            server.send(200, F("application/json"), error.c_str());
        }
    }

    return true;
}
#endif

bool Handler::handleAction()
{
    String path(server.uri());
#if COIN_THING_SERIAL > 0
    Serial.printf("handleAction: path: %s\n", path.c_str());
#endif

    if (path == F("/action/set")) {
        return handleSet();
    } else if (path == F("/action/reset/esp")) {
        return handleResetESP();
    } else if (path == F("/action/reset/settings")) {
        return handleResetSettings();
    } else if (path == F("/action/reset/wifi")) {
        return handleResetWiFi();
    } else if (path == F("/action/reset/all")) {
        return handleResetAll();
    } else if (path == F("/action/reset/forupdate")) {
        return handleForUpdate();
    } else if (path == F("/action/get/version")) {
        return handleGetVersion();
    } else if (path == F("/action/get/name")) {
        return handleGetName();
    } else if (path == F("/action/get/price")) {
        return handleGetPrice();
    }
    return false;
}

bool Handler::handleFileRead()
{
    String path(server.uri());
#if COIN_THING_SERIAL > 0
    Serial.printf("handleFileRead: %s\n", path.c_str());
#endif

    if (path.endsWith("/")) {
        path += F("settings.html");
    }
    return streamFile(path.c_str());
}
