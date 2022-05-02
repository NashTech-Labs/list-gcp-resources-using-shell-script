## Prerequisite

- gcloud cli(recommended)

## Setup gcloud

- sudo snap install google-cloud-cli
- gcloud auth login
- gcloud config set project <PROJECT-ID>
- gcloud auth activate-service-account --key-file terraform/<service-account-json-key>.json 

## Create a service account

- https://cloud.google.com/sdk/gcloud/reference/auth/activate-service-account

## How to Run

- chmod +x <script-name>.sh
- ./<script-name>.sh

## Use case
- The value recieved in json format is useful when we want to use these values in terraform runner
- In that case we can run these scripts from external data block or local-exec in terraform and get values at run time.