#!/bin/sh


BLANK='#00000000'      # blank
CLEAR='#ffffff22'      # clear ish
DEFAULT='#d8dee9e6'    # default
TEXT='#d8dee9e6'       # text
WRONG='#bf616abb'      # wrong
VERIFYING='#ebcb8be6'  #verifying
KEYPRESS='#809575e6'

i3lock \
--insidever-color=$CLEAR     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$CLEAR   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$KEYPRESS      \
--bshl-color=$KEYPRESS       \
\
--screen 1                   \
--blur 5                     \
--clock                      \
--indicator                  \
--time-str="%H:%M:%S"        \
--date-str="%A, %Y-%m-%d"       \
--keylayout 1                \
