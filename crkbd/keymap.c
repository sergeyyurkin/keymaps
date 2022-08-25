#include QMK_KEYBOARD_H
#include <stdio.h>

#define U_NP KC_NO // key is not present

enum layers { BASE };

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
  [BASE] = LAYOUT_split_3x6_3(
    U_NP,  KC_Q,         KC_W,         KC_F,         KC_P,         KC_G,        KC_J,       KC_L,         KC_U,         KC_Y,         KC_QUOT,      U_NP,
    U_NP,  LGUI_T(KC_A), LALT_T(KC_R), LCTL_T(KC_S), LSFT_T(KC_T), KC_D,        KC_H,       LSFT_T(KC_N), LCTL_T(KC_E), LALT_T(KC_I), LGUI_T(KC_O), U_NP,
    U_NP,  KC_Z,         KC_X,         KC_C,         KC_V,         KC_B,        KC_K,       KC_M,         KC_COMM,      KC_DOT,       KC_SLSH,      U_NP,
                                       KC_ESC,       KC_SPC,       KC_TAB,      KC_ENT,     KC_BSPC,      KC_DEL
  )
};
