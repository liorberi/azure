
#create new account in Aws site
#install https://aka.ms/installazurecliwindows (Azure CLI)


az login  
az group create --name Lior-Resource-Group --location westus
 
=================
az acr create --resource-group Lior-Resource-Group --name LiorMyHelmACR --sku Basic
 
================
 
az aks create -g Lior-Resource-Group -n LiorAKS --location westtus  --attach-acr LiorMyHelmACR --generate-ssh-keys
 
===================
 
az aks install-cli
#Downloading client to "C:\Users\lior\.azure-kubectl\kubectl.exe" from "https://storage.googleapis.com/kubernetes-release/release/v1.20.4/bin/windows/amd64/kubectl.exe"
#Please add "C:\Users\lior\.azure-kubectl" to your search PATH so the `kubectl.exe` can be found. 2 options:
#    1. Run "set PATH=%PATH%;C:\Users\lior\.azure-kubectl" or "$env:path += 'C:\Users\lior\.azure-kubectl'" for PowerShell. This is good for the current command session.
#    2. Update system PATH environment variable by following "Control Panel->System->Advanced->Environment Variables", and re-open the command window. You only need to do it once

$env:path += 'C:\Users\lior\.azure-kubectl
 
 
az aks get-credentials --resource-group Lior-Resource-Group --name LiorAKS

 
 