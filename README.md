# garlic-pools-api
Powershell script to generate GarlicCoin Pools API JSON from [PandawanFr/GarlicRecipes](https://github.com/PandawanFr/GarlicRecipes/blob/master/src/content/pool-mining.md) repository - Pool mining markdown page.

This is highly dependent on the format of the markdown

# Getting started

## Updating the data
Run the powershell script and it will generate a new data.json

## Accessing the data

### Powershell
(Invoke-WebRequest $originalUrl).Content | ConvertFrom-Json

### Other
- make a request to the raw URL
  https://raw.githubusercontent.com/chezchezchezchez/garlic-pools-api/master/data.json
- parse as JSON
