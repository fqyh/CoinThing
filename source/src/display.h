#pragma once
#include "settings.h"
#include <Arduino.h>
#include <NeoPixelBus.h>
#include <TFT_eFEX.h>
#include <TFT_eSPI.h>

#define TFT_BL PIN_D2 // Backlight PWM

class Display {
public:
    Display(Settings& setttings);

    void begin();
    void loop();

    void showCoin();
    void showAPQR();
    void showSettingsQR();
    void showAPIOK();
    void showAPIFailed();

private:
    void heartbeat();
    void coin(double price, double price_usd, double change, uint16_t color);
    void chart(const std::vector<double>& prices, double max, double min, Settings::Chart showChart, uint16_t color);
    void rewrite();
    void chartFailed();

    enum class ShowedScreen {
        NONE,
        AP_QR,
        API_OK,
        API_FAILED,
        SETTINGS_QR,
        COIN
    };

    Settings& m_settings;
    TFT_eSPI m_tft;
    TFT_eFEX m_fex;

    NeoPixelBus<NeoGrbFeature, Neo800KbpsMethod> m_neo { 1 };

    ShowedScreen m_lastScreen { ShowedScreen::NONE };
    unsigned long m_lastHeartbeat { 0 };
    uint8_t m_heartbeat { 0 };
    unsigned long m_lastUpdate { 0 };
    unsigned long m_lastChartUpdate { 0 };
    Settings::Chart m_lastChart { Settings::Chart::CHART_24_H };
};
