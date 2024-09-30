#!/bin/bash

# Function to start the reminder app
start_reminder_app() {
    echo "Starting the Reminder App..."

    # Load environment variables and functions
    [ -f "./config/config.env" ] && source ./config/config.env && echo "Loaded environment variables."
    [ -f "./scripts/functions.sh" ] && source ./scripts/functions.sh && echo "Loaded functions."

    # Execute reminder.sh if it exists and is executable
    if [ -x "./scripts/reminder.sh" ]; then
        ./scripts/reminder.sh
    else
        echo "Error: reminder.sh not found or not executable."
        exit 1
    fi
}

# Call the function to start the app
start_reminder_app
