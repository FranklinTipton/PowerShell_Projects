# Variables
$newBranchName = Read-Host -Prompt "Enter Branch Name"

Set-Location -Path C:\source\repos\PowerShell_Projects

# TODO: Branch Name taken? If yes, go away. If no, you can stay.

# Creates, Adds, Commits, Pushes branch to Git
git checkout master
git pull
git checkout -b $newBranchName 
git push --set-upstream origin $newBranchName