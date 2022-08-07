#pragma once
#include <Arduino.h>
#include <ArduinoJson.h>

#define ARDUINOJSON_USE_DOUBLE 1

#if COIN_THING_SERIAL > 0 && !defined UNIT_TEST
extern int callDepth;
extern uint32_t lastIndentMillis;

#define LOG_INDENT                                      \
    Serial.print("[");                                  \
    Serial.print(millis() / 1000);                      \
    Serial.print("] ");                                 \
    Serial.print("[");                                  \
    Serial.print((millis() - lastIndentMillis) / 1000); \
    Serial.print("] ");                                 \
    lastIndentMillis = millis();                        \
    for (int __dd = 0; __dd < callDepth; ++__dd) {      \
        Serial.print("|   ");                           \
    }

struct Depth {
    Depth()
    {
        ++callDepth;
    }
    ~Depth()
    {
        --callDepth;
    }
};

#define LOG_FUNC                       \
    LOG_INDENT                         \
    Depth __d;                         \
    Serial.print("+ ");                \
    Serial.print(__PRETTY_FUNCTION__); \
    Serial.print(" @ ");               \
    FILE_LINE

#define LOG_PRINT(x) \
    Serial.print(x);
#define LOG_PRINTLN(x) \
    Serial.println(x);
#define LOG_PRINTF(f, ...) \
    Serial.printf(f, ##__VA_ARGS__);

#define LOG_I_PRINT(x) \
    LOG_INDENT         \
    LOG_PRINT(x)
#define LOG_I_PRINTLN(x) \
    LOG_INDENT           \
    LOG_PRINTLN(x)
#define LOG_I_PRINTF(f, ...) \
    LOG_INDENT               \
    LOG_PRINTF(f, __VA_ARGS__)

#define FILE_LINE           \
    Serial.print(__FILE__); \
    Serial.print(":");      \
    Serial.println(__LINE__);

#else
#define LOG_INDENT
#define FILE_LINE
#define LOG_FUNC
#define LOG_PRINT(x)
#define LOG_PRINTLN(x)
#define LOG_PRINTF(...)
#define LOG_I_PRINT(x)
#define LOG_I_PRINTLN(x)
#define LOG_I_PRINTF(...)
#endif

String urlencode(const String& url);

namespace Base64 {
int encode(char* output, char* input, int inputLength);
int decode(char* output, char* input, int inputLength);
int encodedLength(int plainLength);
int decodedLength(char* input, int inputLength);

inline void fromA3ToA4(unsigned char* A4, unsigned char* A3);
inline void fromA4ToA3(unsigned char* A3, unsigned char* A4);
inline unsigned char lookupTable(char c);
} // namespace Base64

String encryptEncode(const String& value);
String decodeDecrypt(const String& value);

using gecko_t = double;

enum class NumberFormat : uint8_t {
    THOUSAND_DOT_DECIMAL_COMMA = 0, // 1.000,00
    THOUSAND_BLANK_DECIMAL_COMMA, // 1 000,00
    DECIMAL_COMMA, // 1000,00
    THOUSAND_COMMA_DECIMAL_DOT, // 1,000.00
    THOUSAND_BLANK_DECIMAL_DOT, // 1 000.00
    DECIMAL_DOT // 1000.00
};
enum class SmallDecimalNumberFormat : uint8_t {
    NORMAL, // 0.00001234
    COMPACT // .4z 1234
};
enum class CurrencySymbolPosition : uint8_t {
    LEADING,
    TRAILING
};

void formatNumber(gecko_t n, String& s, NumberFormat format, bool forceSign, bool dash00, SmallDecimalNumberFormat smallDecimalNumberFormat, uint8_t forceDecimalPlaces = std::numeric_limits<uint8_t>::max());
void addCurrencySmbol(String& value, const String& symbol, CurrencySymbolPosition position);

uint32_t millis_test();
bool doInterval(uint32_t change, uint32_t interval);
