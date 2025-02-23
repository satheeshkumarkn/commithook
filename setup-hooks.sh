#!/bin/bash

echo "Setting up Git hooks..."

# Move the post-checkout hook script into the .git/hooks directory
cp scripts/hooks/post-checkout .git/hooks/post-checkout

# Make the post-checkout hook script executable
chmod +x .git/hooks/post-checkout

# Move the commit-msg hook script into the .git/hooks directory
cp commit-msg .git/hooks/commit-msg

# Make the commit-msg hook script executable
chmod +x .git/hooks/commit-msg

echo "Git hooks setup completed."