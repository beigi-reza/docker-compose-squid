#!/bin/bash

# Check if username was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <username>"
  exit 1
fi

USERNAME=$1

# Install htpasswd if it's not available
if ! command -v htpasswd &> /dev/null; then
  echo "Installing apache2-utils to get htpasswd..."
  apt-get update && apt-get install -y apache2-utils
fi

# Check if password file exists
if [ -f passwd ]; then
  # Add user to existing file
  htpasswd passwd "$USERNAME"
else
  # Create new password file
  htpasswd -c passwd "$USERNAME"
fi

echo "User $USERNAME has been added to the password file."