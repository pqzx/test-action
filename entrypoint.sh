#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "time=$time" >> $GITHUB_OUTPUT

# Get the script path from the 2nd argument
script_path=$2

# Check if the provided path exists
if [ ! -f "$script_path" ]; then
    echo "Error: Script not found at '$script_path'"
    exit 1
fi

# Check if the script is executable
if [ ! -x "$script_path" ]; then
    echo "Error: Script at '$script_path' is not executable"
    exit 1
fi

# Execute the script
echo "Executing script: $script_path"
"$script_path"