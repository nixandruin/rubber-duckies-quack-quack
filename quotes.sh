#!/bin/bash

terminal_width=$(tput cols)

center_text() {
    text="$1"         
    text_length=${#text}                 
    padding=$(( (terminal_width - text_length) / 2 )) 

    spaces=""
    for ((i=0; i<$padding;i++)); do
        spaces+=" "
    done

    # Print the centered text
    echo -e "$spaces$text"
}

quotes=("memento mori" "vulnerant omnes, ultima necat" "per aspera ad astra" "carpe diem" "dum spiro, spero" "fortis fortuna adiuvet" "labor omnia vincit" "errare humanum est" "nesce te ipsum" "acta non verba")
translations=("remember you will die" "they all wound the last kills" "through hardship to the stars" "seize the day" "while I breath I hope" "fortune favors the brave" "hard work conquers all" "to error is human" "know thyself" "actions not words")

length=${#quotes[@]}
index=$(( (RANDOM % $length) ))
color='\033[36m'
reset='\033[0m'

quote=$(echo "${quotes[$index]}" | tr '[:lower:]' '[:upper:]')
translation=${translations[$index]}

quote=$(echo -e "${color} ${quote} ${reset}")
translation="\t~$translation~\n"

#fill line with stars
starLine=""
for ((i=0; i<$terminal_width; i++)); do
    starLine+="*"  
done

echo -e "\n$starLine\n"
center_text "$quote"
center_text "$translation"
echo -e "\n$starLine\n"