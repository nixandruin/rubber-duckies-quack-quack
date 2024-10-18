#!/bin/bash

#nab terminal width so we can center some text later!
terminal_width=$(tput cols)

quotes=("memento mori" "vulnerant omnes, ultima necat" "per aspera ad astra" "carpe diem" "dum spiro, spero" 
"fortis fortuna adiuvet" "labor omnia vincit" "errare humanum est" "nesce te ipsum" "acta non verba", "ex nihilo nihil"
"amor et melle et felle est fecundissimus" "esse quam videri" "a fronte praecipitium a tergo lupi" "spiritus intus alit" "virtus non stemma" 
"carpe nocte" "nihil verus est, omnem facere licet" "spectemur agendo"
)
translations=("remember you will die" "they all wound-- the last kills" "through hardship to the stars" "seize the day" 
"while I breathe I hope" "fortune favors the brave" "hard work conquers all" "to error is human" "know thyself" "actions not words", "nothing out of nothing"
"love is rich with both honey and venom" "to be rather than to seem" "a precipe in front, wolves behind" "the spirit nourishes within" "virtue, not garland"
"seize the night" "nothing is true, everything is permitted" "let us be judged by our actions"
)

colors=('\033[38;5;5m' '\033[38;5;6m' '\033[38;5;30m' '\033[38;5;34m' '\033[38;5;49m' '\033[38;5;50m'
'\033[38;5;51m' '\033[38;5;70m' '\033[38;5;155m ' '\033[38;5;225m'
)

#grab a random quote
length=${#quotes[@]}
index=$(( (RANDOM % $length) ))

#grab a random color
colors_length=${#colors[@]}
color_index=$(( RANDOM % colors_length ))
color="${colors[$color_index]}"
reset='\033[0m'

#format the quote to be all uppercase
quote=$(echo "${quotes[$index]}" | tr '[:lower:]' '[:upper:]')
quote=$(echo -e "${quote}")
translation=${translations[$index]}
translation=$(echo -e "~$translation~")

#fill top/bottom lines with stars
starLine=""
for ((i=0; i<$terminal_width; i++)); do
    starLine+="*"  
done

###OUTPUT###
echo -e "\n$starLine\n"

#find correct padding to center quote
text_length=${#quote}                
padding=$(( (terminal_width - $text_length) / 2)) 

#create padding
spaces=""
for ((i=0; i<$padding;i++)); do
    spaces+=" "
done

#print quote
echo -e "$spaces$color$quote$reset"
echo -e "$spaces\t$translation"
echo -e "\n$starLine\n"