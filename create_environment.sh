#!/bin/bash

# create_environment.sh

# Create directories
mkdir -p submission_reminder_app/app
mkdir -p submission_reminder_app/modules
mkdir -p submission_reminder_app/assets
mkdir -p submission_reminder_app/config

# Create files
touch submission_reminder_app/app/reminder.sh
touch submission_reminder_app/modules/functions.sh
touch submission_reminder_app/assets/submissions.txt
touch submission_reminder_app/config/config.env
touch submission_reminder_app/startup.sh

# Provide executable permission to scripts
chmod +x submission_reminder_app/app/reminder.sh
chmod +x submission_reminder_app/modules/functions.sh
chmod +x submission_reminder_app/startup.sh

echo "Environment setup complete!"
