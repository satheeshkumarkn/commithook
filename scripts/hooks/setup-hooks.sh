#!/bin/bash

echo "Setting up Git hooks..."

# Verify and print the pattern before the move
echo "Before Move: "
grep 'JIRA_ID_PATTERN' scripts/hooks/commit-msg

# Copy the commit-msg hook script into the .git/hooks directory
cp scripts/hooks/commit-msg .git/hooks/commit-msg

# Verify and print the pattern after the move
echo "After Move: "
grep 'JIRA_ID_PATTERN' .git/hooks/commit-msg

# Make the commit-msg hook script executable
chmod +x .git/hooks/commit-msg

# Move the post-checkout hook script into the .git/hooks directory
cp scripts/hooks/post-checkout .git/hooks/post-checkout

# Make the post-checkout hook script executable
chmod +x .git/hooks/post-checkout

echo "Git hooks setup completed."
