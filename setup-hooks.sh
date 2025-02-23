#!/bin/bash

echo "Setting up Git hooks..."

# Verify and print the pattern before the move
echo "Before Move: "
grep 'JIRA_ID_PATTERN' scripts/hooks/commit-msg

# Check if the source file exists
if [ ! -f scripts/hooks/commit-msg ]; then
    echo "Error: scripts/hooks/commit-msg does not exist."
    exit 1
fi

# Copy the commit-msg hook script into the .git/hooks directory
cp scripts/hooks/commit-msg .git/hooks/commit-msg

# Check if the file was copied successfully
if [ $? -ne 0 ]; then
    echo "Error: Failed to copy commit-msg to .git/hooks."
    exit 1
fi

# Verify and print the pattern after the move
echo "After Move: "
grep 'JIRA_ID_PATTERN' .git/hooks/commit-msg

# Make the commit-msg hook script executable
chmod +x .git/hooks/commit-msg

# Move the post-checkout hook script into the .git/hooks directory
cp scripts/hooks/post-checkout .git/hooks/post-checkout

# Check if the post-checkout hook was copied successfully
if [ $? -ne 0 ]; then
    echo "Error: Failed to copy post-checkout to .git/hooks."
    exit 1
fi

# Make the post-checkout hook script executable
chmod +x .git/hooks/post-checkout

echo "Git hooks setup completed."

echo "Git hooks setup completed."
read -p "Press [Enter] to exit..."