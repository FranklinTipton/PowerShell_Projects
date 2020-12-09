#Creating a security group 
New-LocalGroup -Name "SecurityGroup"

#Add user to new security group
Add-localGroupMember -Group "SecurityGroup" -Member "8b"

#Creating a new Folder path in C:\
New-Item -Path "c:\" -Name "assignmentB" -ItemType "directory"

#Setting ACL Variable path
$ACL = Get-ACL -Path "c:\assignmentB"

#Creating variable to add SecurityGroup to the ACL for folder (C:\assignmentB)
$AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("SecurityGroup","FullControl","Allow")

#Running variable through ACL.SetAccessRule
$ACL.SetAccessRule($AccessRule)

#Running ACL variable to 'c:\assintmentb
$ACL | Set-Acl -Path "c:\assignmentB"

#Creates a format table to see Groups and Permissions
(Get-ACL -Path "c:\assignmentB").Access | Format-Table IdentityReference,FileSystemRights,AccessControlType,IsInherited,InheritanceFlags -AutoSize