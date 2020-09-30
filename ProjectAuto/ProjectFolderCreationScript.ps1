# Variables
$newProjectName = Read-Host -Prompt "Enter Project Name"
$basepath = "C:\Source\Repos\PowerShell_Projects"

# Add File 
New-Item -Path "$basepath\$newProjectName" -ItemType Directory -force
New-Item -Path "$basepath\$newProjectName\$newProjectName.ps1" -ItemType File

# Create README
$readMeContent = "# $newProjectName

## Description

## Ideas

## Goals"

New-Item -Path "$basepath\$newProjectName\README.md"  -ItemType File
Set-Content -path "$basepath\$newProjectName\README.md" -Value  $readMeContent