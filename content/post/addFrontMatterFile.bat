@Echo Off
Set "var="
Set /P "var="<"target.md"
If /I Not "%var%"=="---" GoTo False
Echo true
Pause
GoTo :EOF

:false
Echo false
Pause
type frontMatter.md >> target.md
Echo Done
type frontMatter.md
