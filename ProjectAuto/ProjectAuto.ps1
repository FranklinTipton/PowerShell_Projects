# Dot-Sourcing from BranchCreation to get Branch info
. C:\Source\Repos\PowerShell_Projects\ProjectAuto\BranchCreationScript.ps1

# Dot Sourcing from ProjectFolderCreation to create files
. C:\Source\Repos\PowerShell_Projects\ProjectAuto\ProjectFolderCreationScript.ps1

git add *
git commit -m "Project Creation"
git push