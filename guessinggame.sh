
#!/bin/bash

# Function to count files
count_files() {
    find . -maxdepth 1 -type f | wc -l
}

# Get the number of files
total=$(count_files)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Loop until the correct answer
while true
do
    echo "Enter your guess:"
    read guess

    if [ "$guess" -lt "$total" ]
    then
        echo "Your guess is too low!"
    elif [ "$guess" -gt "$total" ]
    then
        echo "Your guess is too high!"
    else
        echo "Congratulations! You guessed correctly!"
        break
    fi
done

echo "Game over!"
