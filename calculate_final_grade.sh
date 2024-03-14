#!/bin/bash
# Name: Hans Kang
# Description: Purpose of this script is to calculate the final grade and display the letter grade for a course.

# Prompt the user to enter marks for grade items
read -p "Enter Assignment mark (0 - 40): " AssignmentMark
read -p "Enter Test 1 mark (0 - 15): " Test1Mark
read -p "Enter Test 2 mark (0 - 15): " Test2Mark
read -p "Enter Final exam mark (0 - 30): " FinalExamMark

# Calculate the final grade value by adding all 4 marks.
FinalGrade=$((AssignmentMark + Test1Mark + Test2Mark + FinalExamMark))

# Checks for user input and verify the grades and convert it to the letter
if [ $FinalGrade -ge 90 ]; then
    final_letter_grade="A+"
elif [ $FinalGrade -ge 85 ]; then
    final_letter_grade="A"
elif [ $FinalGrade -ge 80 ]; then
    final_letter_grade="A-"
elif [ $FinalGrade -ge 77 ]; then
    final_letter_grade="B+"
elif [ $FinalGrade -ge 73 ]; then
    final_letter_grade="B"
elif [ $FinalGrade -ge 70 ]; then
    final_letter_grade="B-"
elif [ $FinalGrade -ge 67 ]; then
    final_letter_grade="C+"
elif [ $FinalGrade -ge 63 ]; then
    final_letter_grade="C"
elif [ $FinalGrade -ge 60 ]; then
    final_letter_grade="C-"
elif [ $FinalGrade -ge 57 ]; then
    final_letter_grade="D+"
elif [ $FinalGrade -ge 53 ]; then
    final_letter_grade="D"
elif [ $FinalGrade -ge 50 ]; then
    final_letter_grade="D"
else
    final_letter_grade="F"
fi

# Display the final numberic and final letter grades
echo "Your final numeric grade is: $FinalGrade, and your final letter grade is: $final_letter_grade"
