#command to get the current directory 
$dir = (Get-Item -Path ".\" -Verbose).FullName
#Enumerate list of scripts
$test = Get-ChildItem -Include *.py, *.sh, *.ps1 -Recurse |Select-Object Directory,Name
#Naming file that scripts will be output to 
$file = "Scripts.txt"
#Creating file for script list in current directory 
New-Item -Path $dir -Name $file -ItemType "file"
$dir = $dir + "\" + $file
$test | Out-File $dir