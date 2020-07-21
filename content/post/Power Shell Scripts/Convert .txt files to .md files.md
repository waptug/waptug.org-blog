---
title: "How to Convert .txt Private Lable Reseller article files to .md files to use in HUGO with the ANANKE theme"
date: 2020-06-28T05:05:12-08:00
description: "Power Shell Scripts Tips For Web Success"
featured_image: "/images/Power Shell Scripts.jpg"
tags: ["Power Shell Scripts"]
---
How to Convert .txt Private Lable Reseller article files to .md files to use in HUGO with the ANANKE theme

The following is a great power shell script to convert article files from PLR article packs in .txt file format that follow a simple structure format.

Title of article [Title can not have double quotes in it or a colan : ]

Content of article

This script will add the proper yaml header front matter to the file so it will render in HUGO and be indexed properly in the blog if it uses the ananke theme.

It will add the following header info:

---  [A line of 3 dashes will be added]

title: ['title of the article in the first line of the file will be inserted here']

date: ['randomly generated date will be inserted here']

description: ['a description of the file generated from the folder name containing it with a text snip added to it - Tips for Web Success']

featured_image: [/images/(name of folder.jpg will be inserted here)]

tags: ['a tag will be generated here from the name of the folder containing the file with extra underscores and dashes removed and replaced with spaces']

--- [A line of 3 dashes will be added]
then the content of the file will be appended to this front matter including the title of the article that was orgnially on the first line.

So your orginal file must be in UTF-8 format charecter encoding and not have any blank lines before the title line or any extra charecters on the first line such as =========== or they will get converted into the title of the article and HUGO will use that line to render the article listing in the index. 

So a little file prep may be necessary to put your orginal files in the proper structure before you run this script.

Save this script into a text file using a text editor such as Notepad++ or similar type of plain text editor. Don't use a wordprecessor such as Word because it will add extra formatting information and your files and will not work.

Save the file will the file extention of .ps1 and then place it in the folder you want to run the script on.
Then click on it and run as powershell or run from the powershell command line while your in that folder.

This script will recursively travel down into your folders and look at every file in it and run the conversion on all files with a .txt or .text or .md file extention.  It will delete the old file and save the converted file in its place. Other file extentions will not be converted.

.md files with a the ymal front matter header will be skipped too.

Be sure to make a back up of your orginal files to a diferent folder outside of the folder your going to run this script on so you have a backup incase any of the files had something strange in the title that caused it to render strangely.

If your first line is enclosed in "quotes" it will not work as expected so check your orginals to see if any of the article titles have a section of the title in quotes.  It the quotes exist then HUGO will see ""title here"" and not display a title and report an error when you build your HUGO blog or try to run the HUGO server -D command.

I am working on a updated script to catch errors in article format during the run of the script and fix the issues as it is running or report any issues that must be fixed manually.

Feel free to hack on this script to add any changes you see necessary to fit your particular needs and orginal file formates. 

I would not modify this script to run on binary file formats like .doc or .jpg as it will mess up the file formats. 

If you have suggestions please drop me a line at waptug 'at' gmail.com 

```powershell

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

```