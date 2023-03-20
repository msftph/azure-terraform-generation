$ErrorActionPreference = 'Stop'

$subscriptionID = (az account show) | ConvertFrom-Json | 