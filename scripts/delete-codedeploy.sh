#!/usr/bin/env bash
set -e

script_dir="$(dirname "$0")"

ENVIRONMENT_FILE="$script_dir/../current_environment.sh"
if [ ! -f "$ENVIRONMENT_FILE" ]; then
    echo "Fatal: environment file $ENVIRONMENT_FILE does not exist!" 2>&1
    exit 1
fi

. $ENVIRONMENT_FILE

echo "Deleting codedeploy $awsdevopsdemo_codedeploy_application."

aws deploy delete-application --application-name $awsdevopsdemo_codedeploy_application

echo "Deleted codedeploy $awsdevopsdemo_codedeploy_application."
