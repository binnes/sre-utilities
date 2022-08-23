#!/bin/bash


# In order to use this script you must have installed the Azure
# Cloud CLI. 
# Visit and follow instructions for local OS - https://docs.microsoft.com/en-us/cli/azure/?view=azure-cli-latest | sh

#Login to Azure 
#TODO - replace with Service Principal

#Azure login
#az login -u "${1}" -p "${2}"
#A web browser has been opened at https://login.microsoftonline.com/organizations/oauth2/v2.0/authorize. Please continue the login in the web browser. If no web browser is available or if the web browser fails to open, use device code flow with `az login --use-device-code`
az login 

# get the current default subscription using show
# echo "================================="
# echo "List the billing accounts "
# echo "================================="
# az billing account list --expand "soldTo,billingProfiles,billingProfiles/invoiceSections"
# echo "================================="

id=$1
echo $id

# Get a billing account by its ID

echo "================================="
echo "Billing Account by ID "
echo "================================="
az billing account show --name $id
echo "================================="




