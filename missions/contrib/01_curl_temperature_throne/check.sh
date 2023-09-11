#!/usr/bin/env sh

temperature_file="$(eval_gettext '$GSH_HOME/Castle/Main_building/Library/Merlin_s_office')/$(gettext "Drawer")/temperature.txt"

# Check if the file exists
if [ -e "$temperature_file" ]; then
    # Read the content of the file and store it in a variable
    file_content=$(<"$temperature_file")

    # Check if the content is equal to 29.1875
    if [ "$file_content" -gt 28 ]; then
        echo "The princess was right, the temperature was too high that night!"
        unset goal current
        true
    else
        echo "The content of $temperature_file is not equal to 20."
        unset goal current
        false
    fi
else
    echo "$temperature_file does not exist."
    unset goal current
    false
fi