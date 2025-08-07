#!/bin/bash
echo "🔍 Checking for existing SSH keys..."
ls -al ~/.ssh
echo "🔍 Checking if SSH agent is running..."
eval "$(ssh-agent -s)"
echo "🔍 Listing keys currently added to SSH agent:"
ssh-add -l
echo "🔍 Testing connection to GitHub..."
ssh -T git@github.com
