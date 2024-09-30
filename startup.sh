# Function to start the reminder app
start_reminder_app() {
    echo "Starting the Reminder App..."

# Load environment variables from config.env
    if [ -f "./config/config.env" ]; then
        # Source the config.env file to load the variables
        source ./config/config.env
        echo "Loaded environment variables from config.env."
    else
        echo "Warning: config.env not found. Proceeding without loading variables."
    fi

    # Load functions from functions.sh
    if [ -f "./modules/functions.sh" ]; then
        source ./modules/functions.sh
        echo "Loaded functions from functions.sh."
    else
        echo "Warning: functions.sh not found. Proceeding without loading functions."
    fi

 # Check if reminder.sh exists and is executable
    if [ -x "./app/reminder.sh" ]; then
        # Execute the reminder script
        ./app/reminder.sh
    else
        echo "Error: reminder.sh not found or not executable."
        exit 1
    fi
}

# Call the function to start the app
start_reminder_app
