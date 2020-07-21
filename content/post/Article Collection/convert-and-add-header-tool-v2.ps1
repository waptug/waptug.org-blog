$folder = $PSScriptRoot
$children = Get-ChildItem -Path $folder -File -Include *.txt,*.text,*.md -Recurse
[datetime]$minDate = "2019/01/01 00:00:00"
[datetime]$maxDate = "2025/12/31 23:59:59"

if($children.Count -gt 0) {
    foreach($file in $children) {
        $content = Get-Content -Path $file.FullName -Raw
        if($content -like "---*title: *---*") {
            Write-Output "File $($file.FullName) was already processed. File skipped."
        } else {
            $dateTemp = Get-Random -Minimum $minDate.Ticks -Maximum $maxDate.Ticks
            $title = ($content -split "`n")[0]
            $date = (New-Object DateTime($dateTemp)).ToString("yyyy-MM-ddTHH:mm:ss")
            $parentF = Split-Path $file.FullName -Parent
            $parent = $parentF.Substring($parentF.LastIndexOf('\')+1)
            $tags = ($parent -replace '-',' ') -replace '_',' '
    
            $output = @()
            $output += "---"
            $output += "title: `"$($title.Trim())`""
            $output += "date: $date-08:00"
            $output += "description: `"$parent Tips for Web Success`""
            $output += "featured_image: `"/images/$($parent).jpg`""
            $output += "tags: [`"$tags`"]"
            $output += "---`n" 
            $output += $content

            if($file.Extension -eq ".md") {
                $path = "$($parentF)\$($file.Name)"
                $Utf8NoBomEncoding = New-Object System.Text.UTF8Encoding $False
                [System.IO.File]::WriteAllLines($path, $output, $Utf8NoBomEncoding)
            } else {
                $path = "$($parentF)\$($file.BaseName).md"
                $Utf8NoBomEncoding = New-Object System.Text.UTF8Encoding $False
                [System.IO.File]::WriteAllLines($path, $output, $Utf8NoBomEncoding)
                $file | Remove-Item -Force
            }

            
        }
    }
}