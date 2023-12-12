#!/usr/bin/env bash

REPOSITORIES=(
    "med-lib-contentmodel"
    "jnj-lib-contentmodel"
    #backend
    "med-integration-bc"
    "med-platform"
    "med-svc-auth"
    "med-svc-bff"
    "med-svc-bff-webhook"
    "med-svc-cart"
    "med-svc-checkout"
    "med-svc-communications"
    "med-svc-fulfilment"
    "med-svc-health-profile"
    "med-svc-orders"
    "med-svc-payments"
    "med-svc-pdf"
    "med-svc-pim"
    "med-svc-schema-manager"
    "med-svc-users"
    "med-svc-utils"
    #frontend
    "jnj-web-host-versalie"
    "med-web-auth"
    "med-web-cart"
    "med-web-checkout"
    "med-web-component-library"
    "med-web-homepage"
    "med-web-product"
    "med-web-questionnaire"
    "med-web-shell-app"
    "med-web-user"
)

# Variables for statistics
DIRECTORY=$(mktemp -d)
PULLED_FILE="$DIRECTORY/pulled"
UPDATED_FILE="$DIRECTORY/updated"
UP_TO_DATE_FILE="$DIRECTORY/up_to_date"
ERROR_REPOS_FILE="$DIRECTORY/errors"

touch $PULLED_FILE
touch $UPDATED_FILE
touch $UP_TO_DATE_FILE
touch $ERROR_REPOS_FILE

# Function to clone or pull a repo
clone_or_pull(){
    REPO=$1

    # If the repo does not exist
    if [ ! -d "$REPO" ]; then
        echo "pulling $REPO"
        # gh repo clone medlify-health/$REPO> /dev/null 2>&1 && echo "$REPO" >> $PULLED_FILE
        git clone "https://github.com/medlify-health/$REPO.git" > /dev/null 2>&1 && echo "$REPO" >> $PULLED_FILE
    # If the repo exists
    else
        cd $REPO
        OUTPUT=$(git pull origin main 2>&1)
        cd ..
        if [[ $OUTPUT == *"Already up to date."* ]]; then
            echo "$REPO up to date"
            echo "$REPO" >> $UP_TO_DATE_FILE
        elif [[ $OUTPUT == *"Updating "* ]]; then
            echo "$REPO updating"
            echo "$REPO" >> $UPDATED_FILE
        else
            echo "$REPO error"
            echo "$REPO" >> $ERROR_REPOS_FILE
        fi
    fi
}

export -f clone_or_pull
export PULLED_FILE
export UPDATED_FILE
export UP_TO_DATE_FILE
export ERROR_REPOS_FILE

# Run clone_or_pull function in parallel with xargs
printf '%s\n' "${REPOSITORIES[@]}" | xargs -n 1 -P 10 -I {} bash -c 'clone_or_pull "$@"' _ {}

echo
if [ $(wc -l <"$PULLED_FILE") -gt 0 ]; then echo "Repos pulled: $(cat "$PULLED_FILE")"; fi
if [ $(wc -l <"$UPDATED_FILE") -gt 0 ]; then echo "Repos updated:$(wc -l <"$UPDATED_FILE")"; fi
if [ $(wc -l <"$UP_TO_DATE_FILE") -gt 0 ]; then echo "Repos up to date:$(wc -l <"$UP_TO_DATE_FILE")"; fi 
if [ $(wc -l <"$ERROR_REPOS_FILE") -gt 0 ]; then echo "Repos with errors: $(cat "$ERROR_REPOS_FILE")"; fi

# Remove temporary directory
rm -r $DIRECTORY
