#!/bin/bash

##
# cas.sh
#
# Converts phrases to programming casings
#
# $1 : phrase
#
# Usage :
# cas "$1"

COLOR_ESC="\e[";
#COLOR_ESC="\033[";
#COLOR_ESC="\x1B[";
COLOR_CODE_01="5;"
COLOR_CODE_02="44;"
COLOR_CODE_03="96m"
COLOR_CODE_04="38;"
COLOR_CODE_05="5;"
COLOR_CODE_06="198m"
COLOR_CODE_07="205m"
COLOR_CODE_08="210m"
COLOR_CODE_09="216m"
COLOR_CODE_10="222m"
COLOR_CODE_11="228m"
COLOR_CODE_12="197m"
COLOR_CODE_13="203m"
COLOR_CODE_14="209m"
COLOR_CODE_15="215m"
COLOR_CODE_16="221m"
COLOR_CODE_17="227m"
COLOR_CODE_18="196m"
COLOR_CODE_19="202m"
COLOR_CODE_20="208m"
COLOR_CODE_21="214m"
COLOR_CODE_22="220m"
COLOR_CODE_23="226m"
#COLOR_RESET="\033[0;0;39m"
COLOR_RESET="\e[0m"
#COLOR_RESET="\033[0m"

TEXT_00="  00. Input Case                              "
TEXT_01="                                              "
TEXT_02="  Casings in Programming                      "
VERSION="                   v.1.0                      "
TEXT_03="  01. Snake Case                              "
TEXT_04="  02. Screaming Snake Case                    "
TEXT_05="  03. Kebab Case                              "
TEXT_06="  04. Camel Case                              "
TEXT_07="  05. Pascal Case                             "
TEXT_08="  06. Snake Case with Uppercase First Letter  "
TEXT_09="  07. Upper Case                              "
TEXT_10="  08. Lower Case                              "

number="#           : "
name="Name        : "
letters="Letters     : "
separator="Separator   : "
uses_intro="Uses        : "
uses_follow="              "
example="Example     : "
input="Input       : "
output="Output      : "

number_01="01"
name_01="Snake case"
letters_01="All letters are lowercase."
separator_01="Underscore (_)"
uses_01_1="Variables, method names, file names."
uses_01_2="In Python. Not in Java, JavaScript, or TypeScript."
uses_01_3="With databases, creating table and column names."
example_01="snake_case"

number_02="02"
name_02="Screaming snake case"
letters_02="All letters are uppercase."
separator_02="Underscore (_)"
uses_02_1="Declaring constants in most programming languages."
example_02="SCREAMING_SNAKE_CASE"

number_03="03"
name_03="Kebab case"
letters_03="All letters are lowercase."
separator_03="Dash (-)"
uses_03_1="Mostly in URLs."
example_03="kebab-case"

number_04="04"
name_04="Camel case"
letters_04="Making the first word lowercase. Then capitalizing the first letter of each word that follows."
separator_04="Capital letter at the start of the second word and at each new subsequent word."
uses_04_1="Variables, functions, method names in Java, JavaScript, and TypeScript."
example_04="camelCase"

number_05="05"
name_05="Pascal case"
letters_05="Capitalizing the first letter of each word."
separator_05="Capital letter at the start of every word."
uses_05_1="Naming classes in most programming languages."
example_05="PascalCase"

number_06="06"
name_06="Snake case with uppercase first letter"
letters_06="The first letter is uppercase, the rest of letters are lowercase."
separator_06="Underscore (_)"
uses_06_1=""
example_06="Snake_case_with_uppercase_first_letter"

number_07="07"
name_07="Upper case"
letters_07="All letters are uppercase."
separator_07="Space ( )"
example_07="UPPER CASE"

number_08="08"
name_08="Lower case"
letters_08="All letters are lowercase."
separator_08="Space ( )"
example_08="lower case"

#number_0=""
#name_0=""
#letters_0=""
#separator_0=""
#uses_0_1=""
#uses_0_2=""
#uses_0_3=""
#example_0=""

clear

echo -e "${COLOR_ESC}${COLOR_CODE_01}${COLOR_CODE_02}${COLOR_CODE_03}${TEXT_01}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_01}${COLOR_CODE_02}${COLOR_CODE_03}${TEXT_02}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_01}${COLOR_CODE_02}${COLOR_CODE_03}${TEXT_01}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_01}${COLOR_CODE_02}${COLOR_CODE_03}${VERSION}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_01}${COLOR_CODE_02}${COLOR_CODE_03}${TEXT_01}${COLOR_RESET}"
echo ""

# 00. INPUT CASE
echo -e "${COLOR_ESC}${COLOR_CODE_01}${COLOR_CODE_02}${COLOR_CODE_03}${TEXT_00}${COLOR_RESET}"
echo $1

# 01. SNAKE CASE
echo -e "${COLOR_ESC}${COLOR_CODE_01}${COLOR_CODE_02}${COLOR_CODE_03}${TEXT_03}${COLOR_RESET}"
snake_case=$(echo $1 | tr -s A-Z a-z | sed 's/ /_/g')
printf "\e[38;5;%sm%3s\e[0m" 198 ${snake_case}
echo ""

# 02. SCREAMING SNAKE CASE

echo -e "${COLOR_ESC}${COLOR_CODE_01}${COLOR_CODE_02}${COLOR_CODE_03}${TEXT_04}${COLOR_RESET}"
screaming_snake_case=$(echo $1 | sed -e 's/\(.*\)/\U\1/g' | sed 's/ /_/g')
printf "\e[38;5;%sm%3s\e[0m" 205 ${screaming_snake_case}
echo ""

# 03. KEBAB CASE
echo -e "${COLOR_ESC}${COLOR_CODE_01}${COLOR_CODE_02}${COLOR_CODE_03}${TEXT_05}${COLOR_RESET}"
kebab_case=$(echo $1 | tr -s A-Z a-z | sed 's/ /-/g')
printf "\e[38;5;%sm%3s\e[0m" 210 ${kebab_case}
echo ""

# 04. CAMEL CASE
echo -e "${COLOR_ESC}${COLOR_CODE_01}${COLOR_CODE_02}${COLOR_CODE_03}${TEXT_06}${COLOR_RESET}"
camel_case=$(echo $1 | sed -e 's/\(\<[a-zA-Z]\)\([a-zA-Z]*\>\)/\u\1\L\2/g' | sed 's/ //g')
camel_case_firt_letter=${camel_case:0:1}
camel_case_firt_letter_lowcase=$(echo ${camel_case_firt_letter} | tr -s A-Z a-z)
camel_case_rest_of_letters=${camel_case:1}
camel_case=${camel_case_firt_letter_lowcase}${camel_case_rest_of_letters}
printf "\e[38;5;%sm%3s\e[0m" 216 ${camel_case}
echo ""

# 05. PASCAL CASE
echo -e "${COLOR_ESC}${COLOR_CODE_01}${COLOR_CODE_02}${COLOR_CODE_03}${TEXT_07}${COLOR_RESET}"
pascal_case=$(echo $1 | sed -e 's/\(\<[a-zA-Z]\)\([a-zA-Z]*\>\)/\u\1\L\2/g' | sed 's/ //g')
printf "\e[38;5;%sm%3s\e[0m" 222 ${pascal_case}
echo ""

# 06. SNAKE CASE WITH UPPERCASE FIRST LETTER
echo -e "${COLOR_ESC}${COLOR_CODE_01}${COLOR_CODE_02}${COLOR_CODE_03}${TEXT_08}${COLOR_RESET}"
snake_case_first_letter=${snake_case:0:1}
snake_case_first_letter_uppercase=$(echo ${snake_case_first_letter} | tr -s a-z A-Z)
snake_case_rest_of_letters=${snake_case:1}
snake_case_with_uppercase_first_letter=${snake_case_first_letter_uppercase}${snake_case_rest_of_letters}
printf "\e[38;5;%sm%3s\e[0m" 228 ${snake_case_with_uppercase_first_letter}
echo ""

# 07. UPPER CASE
echo -e "${COLOR_ESC}${COLOR_CODE_01}${COLOR_CODE_02}${COLOR_CODE_03}${TEXT_09}${COLOR_RESET}"
upper_case=$(echo ${screaming_snake_case} | sed 's/_/ /g')
upper_case_2=$(echo $1 | tr -s a-z A-Z)
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_12}${upper_case}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_12}${upper_case_2}${COLOR_RESET}"

# 08. LOWER CASE
echo -e "${COLOR_ESC}${COLOR_CODE_01}${COLOR_CODE_02}${COLOR_CODE_03}${TEXT_10}${COLOR_RESET}"
lower_case=$(echo $1 | tr -s A-Z a-z)
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_13}${lower_case}${COLOR_RESET}"
echo ""

# ******************************************************************************************************************

# 01. SNAKE CASE EXPLANATION
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_06}${number}${number_01}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_06}${name}${name_01}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_06}${letters}${letters_01}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_06}${separator}${separator_01}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_06}${uses_intro}${uses_01_1}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_06}${uses_follow}${uses_01_2}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_06}${uses_follow}${uses_01_3}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_06}${example}${example_01}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_06}${input}$1${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_06}${output}${snake_case}${COLOR_RESET}"
echo ""

# 02. SCREAMING SNAKE CASE EXPLANATION
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_07}${number}${number_02}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_07}${name}${name_02}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_07}${letters}${letters_02}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_07}${separator}${separator_02}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_07}${uses_intro}${uses_02_1}${COLOR_RESET}"
#echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_07}${uses_follow}${uses_02_2}${COLOR_RESET}"
#echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_07}${uses_follow}${uses_02_3}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_07}${example}${example_02}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_07}${input}$1${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_07}${output}${snake_case}${COLOR_RESET}"
echo ""

# 03. KEBAB CASE EXPLANATION
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_08}${number}${number_03}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_08}${name}${name_03}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_08}${letters}${letters_03}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_08}${separator}${separator_03}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_08}${uses_intro}${uses_03_1}${COLOR_RESET}"
#echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_08}${uses_follow}${uses_03_2}${COLOR_RESET}"
#echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_08}${uses_follow}${uses_03_3}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_08}${example}${example_03}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_08}${input}$1${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_08}${output}${kebab_case}${COLOR_RESET}"
echo ""

# 04. CAMEL CASE EXPLANATION
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_09}${number}${number_04}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_09}${name}${name_04}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_09}${letters}${letters_04}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_09}${separator}${separator_04}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_09}${uses_intro}${uses_04_1}${COLOR_RESET}"
#echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_09}${uses_follow}${uses_04_2}${COLOR_RESET}"
#echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_09}${uses_follow}${uses_04_3}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_09}${example}${example_04}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_09}${input}$1${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_09}${output}${camel_case}${COLOR_RESET}"
echo ""

# 05. PASCAL CASE EXPLANATION
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_10}${number}${number_05}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_10}${name}${name_05}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_10}${letters}${letters_05}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_10}${separator}${separator_05}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_10}${uses_intro}${uses_05_1}${COLOR_RESET}"
#echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_10}${uses_follow}${uses_05_2}${COLOR_RESET}"
#echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_10}${uses_follow}${uses_05_3}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_10}${example}${example_05}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_10}${input}$1${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_10}${output}${pascal_case}${COLOR_RESET}"
echo ""

# 06. SNAKE CASE WITH UPPERCASE FIRST LETTER EXPLANATION
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_11}${number}${number_06}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_11}${name}${name_06}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_11}${letters}${letters_06}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_11}${separator}${separator_06}${COLOR_RESET}"
#echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_11}${uses_intro}${uses_06_1}${COLOR_RESET}"
#echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_11}${uses_follow}${uses_06_2}${COLOR_RESET}"
#echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_11}${uses_follow}${uses_06_3}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_11}${example}${example_06}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_11}${input}$1${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_11}${output}${snake_case_with_uppercase_first_letter}${COLOR_RESET}"
echo ""

# 07. UPPER CASE EXPLANATION
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_12}${number}${number_07}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_12}${name}${name_07}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_12}${letters}${letters_07}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_12}${separator}${separator_07}${COLOR_RESET}"
#echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_12}${uses_intro}${uses_07_1}${COLOR_RESET}"
#echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_12}${uses_follow}${uses_07_2}${COLOR_RESET}"
#echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_12}${uses_follow}${uses_07_3}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_12}${example}${example_07}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_12}${input}$1${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_12}${output}${upper_case}${COLOR_RESET}"
echo ""

# 08. LOWER CASE EXPLANATION
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_13}${number}${number_08}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_13}${name}${name_08}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_13}${letters}${letters_08}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_13}${separator}${separator_08}${COLOR_RESET}"
#echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_13}${uses_intro}${uses_08_1}${COLOR_RESET}"
#echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_13}${uses_follow}${uses_08_2}${COLOR_RESET}"
#echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_13}${uses_follow}${uses_08_3}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_13}${example}${example_08}${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_13}${input}$1${COLOR_RESET}"
echo -e "${COLOR_ESC}${COLOR_CODE_04}${COLOR_CODE_05}${COLOR_CODE_13}${output}${lower_case}${COLOR_RESET}"
echo ""

  
  
  
  
  
  