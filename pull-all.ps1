##run this in the shell if scripts are not allowed
##Set-ExecutionPolicy RemoteSigned

Set-Location $PSScriptRoot
$folders = Get-ChildItem  -Directory 
 
ForEach ($folder in $folders)
{
    cd $folder
    git pull origin master
    Set-Location $PSScriptRoot
} 
