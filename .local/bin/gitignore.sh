#!/bin/bash
touch .gitignore
> .gitignore
git status --porcelain | grep '^??' | cut -c4- >> .gitignore
