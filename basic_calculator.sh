#!/bin/bash
# Name: Hans Kang
# Script File: basic_calculator.sh
# Date: Dec 2, 2023
# Description: This script performs basic calculations with user input menus.

# Main script logic
if [ $# -eq 0 ]; then
    while true; do
        display_menu1
        read -p "Enter your choice: " menu_choice
        case $menu_choice in
            [Cc]) display_menu2 ;;
            [Xx]) exit ;;
            *) echo "Invalid choice. Please try again." ;;
        esac
    done
elif [ $# -eq 3 ]; then
    case $2 in
        +) add $1 $3 ;;
        -) subtract $1 $3 ;;
        *) echo "Invalid operation. Please provide + or -." ;;
    esac
else
    echo "Error: Incorrect number of parameters. Please provide either 0 or 3 parameters."
    exit 1
fi

# Function to display Menu 1
display_menu1() {
    clear
    echo "Menu 1"
    echo "C) Calculation"
    echo "X) Exit"

    read -p "Enter your choice: " menu_choice
    case $menu_choice in
        [Cc]) display_menu2 ;;
        [Xx]) exit ;;
        *) echo "Invalid input. Please enter either C or X." ;;
    esac
}

# Function to perform addition
add() {
    result=$(( $1 + $2 ))
    echo "The sum of $1 plus $2 equals $result"
}

# Function to perform subtraction
subtract() {
    result=$(( $1 - $2 ))
    echo "The result of $1 minus $2 equals $result"
}

# Function to display Menu 2
display_menu2() {
    clear
    echo "Menu 2"
    read -p "Please enter an integer number or X to exit: " num
    case $num in
        [0-9]*) display_menu3 ;;
        [Xx]) exit ;;
        *) echo "Invalid input. Please enter a number or X." ;;
    esac
}

# Function to display Menu 3
display_menu3() {
    clear
    echo "Menu 3"
    echo "+) Add"
    echo "-) Subtract"
    echo "X) Exit"
    read -p "Please enter your choice: " choice
    case $choice in
        +) read -p "Please Enter the second number: " num2
           add $num $num2 ;;
        -) read -p "Please Enter the second number: " num2
           subtract $num $num2 ;;
        X|x) exit ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
    sleep 3
    display_menu1
}

myCalc.txt
Displaying myCalc.txt.
