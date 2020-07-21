$Directory="."
$NewPath="./fixed/"
$files=dir -path . -recurse
$sample = $files|get-random -count 5

$files=dir -path . -recurse
$titles = Get-Content $files -First 1
$t1="---`n"
$t2="title: "
$t3=$titles
$t4="`n---"
$TextToAdd = $t1+$t2+$t3+$t4

Get-ChildItem -Path $Directory -Filter "*.md" | foreach {$TextToAdd+"`r`n" + (Get-Content $_.FullName -raw) | Out-File $_.FullName; Move-Item -Path $_.FullName -Destination $NewPath}