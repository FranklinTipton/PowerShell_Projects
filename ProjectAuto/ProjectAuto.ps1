# Variables
$newBranchName = Read-Host -Prompt "Enter Branch Name"
$basepath = "C:\Source\Repos\PowerShell_Projects"
$newProjectName = Read-Host -Prompt "Enter Project Name"

# Creates, Adds, Commits, pushes branch to Git
git checkout master
git pull
git checkout -b $newBranchName 
git push --set-upstream origin $newBranchName

# Add File 
New-Item -Path "$basepath\$newProjectName" -ItemType Directory -force
New-Item -Path "$basepath\$newProjectName\$newProjectName.ps1" -ItemType File

# Create README
$readMeContent = "#$newProjectName

## Description

## Ideas

## Goals"

New-Item -Path "$basepath\$newProjectName\README.md"  -ItemType File
Set-Content -path "$basepath\$newProjectName\README.md" -Value  $readMeContent

git add *
git commit -m "Project Creation"
git push