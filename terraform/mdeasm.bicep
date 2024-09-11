param name string = 'easm-work'
param region string = 'westeurope'
resource Easm 'Microsoft.Easm/workspaces@2023-04-01-preview' = {
name: name
location: region
properties: {}
}
