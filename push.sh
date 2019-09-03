#!/bin/bash

declare -a location
repositories_file="repositories.txt"

while IFS= read -r line
do
    location+=("$line")
done < "$repositories_file"

for ((i=0;i<${#location[@]};i++))
do
    printf "\nPush %s? [ynq] " "${location[$i]}"
    read ins
    while [ "$ins" != 'y' ] && [ "$ins" != 'n' ] && [ "$ins" != 'q' ]
    do
        echo y - yes
        echo n - no
        echo q - quit
        printf "Perform git push in repository under %s? [ynq] " "${location[$i]}"
        read ins
    done
    if [ "$ins" == 'y' ] || [ "$ins" == 'Y' ]
    then
        if [ ! -d "${location[$i]}" ]; then
            printf "Directory %s does not exist" "${location[$i]}"
        else
            cd "${location[$i]}" || exit
            if [ -d .git ]; then
                echo Pushing "${location[$i]}"
                git push
                cd - || exit
                echo Pushed "${location[$i]}"
            else
                printf "Not a git repository: %s" "${location[$i]}"
            fi
        fi
    elif [ "$ins" == 'n' ]
    then
        echo Skipping "${location[$i]}".
    elif [ "$ins" == 'q' ]
    then
        echo Quitting
        exit 1
    fi
done

printf "\nAll done"
exit 1
