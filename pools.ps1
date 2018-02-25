$originalUrl = "https://raw.githubusercontent.com/PandawanFr/GarlicRecipes/master/src/content/pool-mining.md"
$content = (Invoke-WebRequest $originalUrl).Content.Split("`r`n")
$table =  $content | where-object { $_.StartsWith("|") }
$tableBody = $table[2..($table.Length)]
$pools = @()
$tableBody | ForEach-Object { $pieces = $_.Split('|'); $item = @{ Name=$pieces[1].Trim(); Owner=$pieces[2].Trim(); Homepage=$pieces[3].Trim(); Fee=$pieces[4].Trim(); Address=$pieces[5].Trim() }; $pools += $item }
$jsonObject = @{ pools=$pools }
$json = ConvertTo-JSON $jsonObject
Set-Content -Path "data.json" -Value $json
