package org.gameplay3d;

using StringTools;

class Keyboard_Key
{
    @:isVar public static var KEY_NONE(default, null):Int              = 0;
    @:isVar public static var KEY_PAUSE(default, null):Int             = 0x0013;
    @:isVar public static var KEY_SCROLL_LOCK(default, null):Int       = 0x1014;
    @:isVar public static var KEY_PRINT(default, null):Int             = 0x1061;
    @:isVar public static var KEY_SYSREQ(default, null):Int            = 0x106A;
    @:isVar public static var KEY_BREAK(default, null):Int             = 0x106B;
    @:isVar public static var KEY_ESCAPE(default, null):Int            = 0x001B;
    @:isVar public static var KEY_BACKSPACE(default, null):Int         = 0x0008;
    @:isVar public static var KEY_TAB(default, null):Int               = 0x0009;
    @:isVar public static var KEY_BACK_TAB(default, null):Int          = 0x0089;
    @:isVar public static var KEY_RETURN(default, null):Int            = 0x000D;
    @:isVar public static var KEY_CAPS_LOCK(default, null):Int         = 0x00E5;
    @:isVar public static var KEY_SHIFT(default, null):Int             = 0x00E1;
    @:isVar public static var KEY_CTRL(default, null):Int              = 0x00E3;
    @:isVar public static var KEY_ALT(default, null):Int               = 0x00E9;
    @:isVar public static var KEY_MENU(default, null):Int              = 0x1067;
    @:isVar public static var KEY_HYPER(default, null):Int             = 0x10ED;
    @:isVar public static var KEY_INSERT(default, null):Int            = 0x1063;
    @:isVar public static var KEY_HOME(default, null):Int              = 0x1050;
    @:isVar public static var KEY_PG_UP(default, null):Int             = 0x1055;
    @:isVar public static var KEY_DELETE(default, null):Int            = 0x10FF;
    @:isVar public static var KEY_END(default, null):Int               = 0x1057;
    @:isVar public static var KEY_PG_DOWN(default, null):Int           = 0x1056;
    @:isVar public static var KEY_LEFT_ARROW(default, null):Int        = 0x1051;
    @:isVar public static var KEY_RIGHT_ARROW(default, null):Int       = 0x1053;
    @:isVar public static var KEY_UP_ARROW(default, null):Int          = 0x1052;
    @:isVar public static var KEY_DOWN_ARROW(default, null):Int        = 0x1054;
    @:isVar public static var KEY_NUM_LOCK(default, null):Int          = 0x107F;
    @:isVar public static var KEY_KP_PLUS(default, null):Int           = 0x10AB;
    @:isVar public static var KEY_KP_MINUS(default, null):Int          = 0x10AD;
    @:isVar public static var KEY_KP_MULTIPLY(default, null):Int       = 0x10AA;
    @:isVar public static var KEY_KP_DIVIDE(default, null):Int         = 0x10AF;
    @:isVar public static var KEY_KP_ENTER(default, null):Int          = 0x108D;
    @:isVar public static var KEY_KP_HOME(default, null):Int           = 0x10B7;
    @:isVar public static var KEY_KP_UP(default, null):Int             = 0x10B8;
    @:isVar public static var KEY_KP_PG_UP(default, null):Int          = 0x10B9;
    @:isVar public static var KEY_KP_LEFT(default, null):Int           = 0x10B4;
    @:isVar public static var KEY_KP_FIVE(default, null):Int           = 0x10B5;
    @:isVar public static var KEY_KP_RIGHT(default, null):Int          = 0x10B6;
    @:isVar public static var KEY_KP_END(default, null):Int            = 0x10B1;
    @:isVar public static var KEY_KP_DOWN(default, null):Int           = 0x10B2;
    @:isVar public static var KEY_KP_PG_DOWN(default, null):Int        = 0x10B3;
    @:isVar public static var KEY_KP_INSERT(default, null):Int         = 0x10B0;
    @:isVar public static var KEY_KP_DELETE(default, null):Int         = 0x10AE;
    @:isVar public static var KEY_F1(default, null):Int                = 0x00BE;
    @:isVar public static var KEY_F2(default, null):Int                = 0x00BF;
    @:isVar public static var KEY_F3(default, null):Int                = 0x00C0;
    @:isVar public static var KEY_F4(default, null):Int                = 0x00C1;
    @:isVar public static var KEY_F5(default, null):Int                = 0x00C2;
    @:isVar public static var KEY_F6(default, null):Int                = 0x00C3;
    @:isVar public static var KEY_F7(default, null):Int                = 0x00C4;
    @:isVar public static var KEY_F8(default, null):Int                = 0x00C5;
    @:isVar public static var KEY_F9(default, null):Int                = 0x00C6;
    @:isVar public static var KEY_F10(default, null):Int               = 0x00C7;
    @:isVar public static var KEY_F11(default, null):Int               = 0x00C8;
    @:isVar public static var KEY_F12(default, null):Int               = 0x00C9;
    @:isVar public static var KEY_SPACE(default, null):Int             = ' '.fastCodeAt(0);
    @:isVar public static var KEY_EXCLAM(default, null):Int            = '!'.fastCodeAt(0);
    @:isVar public static var KEY_QUOTE(default, null):Int             = '"'.fastCodeAt(0);
    @:isVar public static var KEY_NUMBER(default, null):Int            = '#'.fastCodeAt(0);
    @:isVar public static var KEY_DOLLAR(default, null):Int            = '$'.fastCodeAt(0);
    @:isVar public static var KEY_PERCENT(default, null):Int           = '%'.fastCodeAt(0);
    @:isVar public static var KEY_CIRCUMFLEX(default, null):Int        = '^'.fastCodeAt(0);
    @:isVar public static var KEY_AMPERSAND(default, null):Int         = '&'.fastCodeAt(0);
    @:isVar public static var KEY_APOSTROPHE(default, null):Int        = '\\'.fastCodeAt(0);
    @:isVar public static var KEY_LEFT_PARENTHESIS(default, null):Int  = '('.fastCodeAt(0);
    @:isVar public static var KEY_RIGHT_PARENTHESIS(default, null):Int = ')'.fastCodeAt(0);
    @:isVar public static var KEY_ASTERISK(default, null):Int          = '*'.fastCodeAt(0);
    @:isVar public static var KEY_PLUS(default, null):Int              = '+'.fastCodeAt(0);
    @:isVar public static var KEY_COMMA(default, null):Int             = ';'.fastCodeAt(0);
    @:isVar public static var KEY_MINUS(default, null):Int             = '-'.fastCodeAt(0);
    @:isVar public static var KEY_PERIOD(default, null):Int            = '.'.fastCodeAt(0);
    @:isVar public static var KEY_SLASH(default, null):Int             = '/'.fastCodeAt(0);
    @:isVar public static var KEY_ZERO(default, null):Int              = '0'.fastCodeAt(0);
    @:isVar public static var KEY_ONE(default, null):Int               = '1'.fastCodeAt(0);
    @:isVar public static var KEY_TWO(default, null):Int               = '2'.fastCodeAt(0);
    @:isVar public static var KEY_THREE(default, null):Int             = '3'.fastCodeAt(0);
    @:isVar public static var KEY_FOUR(default, null):Int              = '4'.fastCodeAt(0);
    @:isVar public static var KEY_FIVE(default, null):Int              = '5'.fastCodeAt(0);
    @:isVar public static var KEY_SIX(default, null):Int               = '6'.fastCodeAt(0);
    @:isVar public static var KEY_SEVEN(default, null):Int             = '7'.fastCodeAt(0);
    @:isVar public static var KEY_EIGHT(default, null):Int             = '8'.fastCodeAt(0);
    @:isVar public static var KEY_NINE(default, null):Int              = '9'.fastCodeAt(0);
    @:isVar public static var KEY_COLON(default, null):Int             = ':'.fastCodeAt(0);
    @:isVar public static var KEY_SEMICOLON(default, null):Int         = ';'.fastCodeAt(0);
    @:isVar public static var KEY_LESS_THAN(default, null):Int         = '<'.fastCodeAt(0);
    @:isVar public static var KEY_EQUAL(default, null):Int             = '='.fastCodeAt(0);
    @:isVar public static var KEY_GREATER_THAN(default, null):Int      = '>'.fastCodeAt(0);
    @:isVar public static var KEY_QUESTION(default, null):Int          = '?'.fastCodeAt(0);
    @:isVar public static var KEY_AT(default, null):Int                = '@'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_A(default, null):Int         = 'A'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_B(default, null):Int         = 'B'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_C(default, null):Int         = 'C'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_D(default, null):Int         = 'D'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_E(default, null):Int         = 'E'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_F(default, null):Int         = 'F'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_G(default, null):Int         = 'G'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_H(default, null):Int         = 'H'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_I(default, null):Int         = 'I'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_J(default, null):Int         = 'J'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_K(default, null):Int         = 'K'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_L(default, null):Int         = 'L'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_M(default, null):Int         = 'M'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_N(default, null):Int         = 'N'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_O(default, null):Int         = 'O'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_P(default, null):Int         = 'P'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_Q(default, null):Int         = 'Q'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_R(default, null):Int         = 'R'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_S(default, null):Int         = 'S'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_T(default, null):Int         = 'T'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_U(default, null):Int         = 'U'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_V(default, null):Int         = 'V'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_W(default, null):Int         = 'W'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_X(default, null):Int         = 'X'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_Y(default, null):Int         = 'Y'.fastCodeAt(0);
    @:isVar public static var KEY_CAPITAL_Z(default, null):Int         = 'Z'.fastCodeAt(0);
    @:isVar public static var KEY_LEFT_BRACKET(default, null):Int      = '['.fastCodeAt(0);
    @:isVar public static var KEY_BACK_SLASH(default, null):Int        = '\\'.fastCodeAt(0);
    @:isVar public static var KEY_RIGHT_BRACKET(default, null):Int     = ']'.fastCodeAt(0);
    @:isVar public static var KEY_UNDERSCORE(default, null):Int        = '_'.fastCodeAt(0);
    @:isVar public static var KEY_GRAVE(default, null):Int             = '`'.fastCodeAt(0);
    @:isVar public static var KEY_A(default, null):Int                 = 'a'.fastCodeAt(0);
    @:isVar public static var KEY_B(default, null):Int                 = 'b'.fastCodeAt(0);
    @:isVar public static var KEY_C(default, null):Int                 = 'c'.fastCodeAt(0);
    @:isVar public static var KEY_D(default, null):Int                 = 'd'.fastCodeAt(0);
    @:isVar public static var KEY_E(default, null):Int                 = 'e'.fastCodeAt(0);
    @:isVar public static var KEY_F(default, null):Int                 = 'f'.fastCodeAt(0);
    @:isVar public static var KEY_G(default, null):Int                 = 'g'.fastCodeAt(0);
    @:isVar public static var KEY_H(default, null):Int                 = 'h'.fastCodeAt(0);
    @:isVar public static var KEY_I(default, null):Int                 = 'i'.fastCodeAt(0);
    @:isVar public static var KEY_J(default, null):Int                 = 'j'.fastCodeAt(0);
    @:isVar public static var KEY_K(default, null):Int                 = 'k'.fastCodeAt(0);
    @:isVar public static var KEY_L(default, null):Int                 = 'l'.fastCodeAt(0);
    @:isVar public static var KEY_M(default, null):Int                 = 'm'.fastCodeAt(0);
    @:isVar public static var KEY_N(default, null):Int                 = 'n'.fastCodeAt(0);
    @:isVar public static var KEY_O(default, null):Int                 = 'o'.fastCodeAt(0);
    @:isVar public static var KEY_P(default, null):Int                 = 'p'.fastCodeAt(0);
    @:isVar public static var KEY_Q(default, null):Int                 = 'q'.fastCodeAt(0);
    @:isVar public static var KEY_R(default, null):Int                 = 'r'.fastCodeAt(0);
    @:isVar public static var KEY_S(default, null):Int                 = 's'.fastCodeAt(0);
    @:isVar public static var KEY_T(default, null):Int                 = 't'.fastCodeAt(0);
    @:isVar public static var KEY_U(default, null):Int                 = 'u'.fastCodeAt(0);
    @:isVar public static var KEY_V(default, null):Int                 = 'v'.fastCodeAt(0);
    @:isVar public static var KEY_W(default, null):Int                 = 'w'.fastCodeAt(0);
    @:isVar public static var KEY_X(default, null):Int                 = 'x'.fastCodeAt(0);
    @:isVar public static var KEY_Y(default, null):Int                 = 'y'.fastCodeAt(0);
    @:isVar public static var KEY_Z(default, null):Int                 = 'z'.fastCodeAt(0);
    @:isVar public static var KEY_LEFT_BRACE(default, null):Int        = '{'.fastCodeAt(0);
    @:isVar public static var KEY_BAR(default, null):Int               = '|'.fastCodeAt(0);
    @:isVar public static var KEY_RIGHT_BRACE(default, null):Int       = '}'.fastCodeAt(0);
    @:isVar public static var KEY_TILDE(default, null):Int             = '~'.fastCodeAt(0);
    @:isVar public static var KEY_EURO(default, null):Int              = 0x20AC;
    @:isVar public static var KEY_POUND(default, null):Int             = 0x00A3;
    @:isVar public static var KEY_YEN(default, null):Int               = 0x00A5;
    @:isVar public static var KEY_MIDDLE_DOT(default, null):Int        = 0x0095;
    @:isVar public static var KEY_SEARCH(default, null):Int            = 0xFFAA;
}

// END
