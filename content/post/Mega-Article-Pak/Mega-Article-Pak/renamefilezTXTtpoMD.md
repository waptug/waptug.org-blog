---
title: Handy recursive file renaming script
date: 2020-06-07T01:58:08-04:00
description: "Scripting Tips For Web Success"
featured_image: "/images/notebook.jpg"
tags: ["scripts"]
---

Have you ever wanted to recursively rename a bunch of files to change thier file extentions?

Here is a simple command line script you can run on a directory of files to quickly rename them to change the file extention from one type to another. This is handy if your file folders are nested in sub folders several layers deep.

```
FOR /R %%x IN (*.txt) DO ren "%%x" *.md
```

In this example above, DOS will look for all files with a .txt on the end and change all files ending in .txt to have .md replace the .txt on the end of the file.

You need to run this from the dos command line in the parent directory that contains your sub folders that you want to recursively look through for files with the extentions your interested in.

This above command is helpful in a case where you are converting a collection of simple text files in to markdown files for use on a static site generator system called Hugo ( https://gohugo.io ) or any blogging system that can read .md files.

This script was adapted from a stackoverflow post at https://stackoverflow.com/questions/17658354/mass-rename-of-file-extensions-recursively-windows-batch

