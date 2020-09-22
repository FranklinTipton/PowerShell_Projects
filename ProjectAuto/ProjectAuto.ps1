Write-Host "How many projects would you like to create?"
Write-Host "You can create up to 5 projects at a time"
$projectCount = Read-Host "Please enter a number between 1 and 5."

while ($projectCount -notin (1..5))
{ 
    Write-Host "Your number was not between 1 and 5"
    $projectCount = Read-Host "Please enter a number between 1 and 5."
}

foreach ($projectCount in 1..$projectCount)
{
    # Create new Param name for user to avoid Users entaglement with entering a BranchName
    # Dot-Sourcing from BranchCreation to get Branch info
    . C:\Source\Repos\PowerShell_Projects\ProjectAuto\BranchCreationScript.ps1
    # Dot Sourcing from ProjectFolderCreation to create files
    . C:\Source\Repos\PowerShell_Projects\ProjectAuto\ProjectFolderCreationScript.ps1

    git add *
    git commit -m "Project Creation"
    git push
}

Write-Host "That works!"
