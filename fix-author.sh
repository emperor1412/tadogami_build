#!/bin/bash

OLD_NAME="vuongnt2201"
OLD_EMAIL="vuongnt2201@gmail.com"
NEW_NAME="admin_pc"
NEW_EMAIL="admin@home.com"

while true; do
    AUTHOR_NAME=$(git log -1 --pretty=format:'%an')
    AUTHOR_EMAIL=$(git log -1 --pretty=format:'%ae')

    if [ "$AUTHOR_NAME" == "$OLD_NAME" ] && [ "$AUTHOR_EMAIL" == "$OLD_EMAIL" ]; then
        git commit --amend --author="$NEW_NAME <$NEW_EMAIL>" --no-edit
    fi

    git rebase --continue || break
done
