#!/bin/bash

declare -a location
location+=("$HOME/Workspace/dotfiles/")

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
            echo Pushing "${location[$i]}"
            cd "${location[$i]}" || exit
            git push
            cd - || exit
            echo Pushed "${location[$i]}"
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
