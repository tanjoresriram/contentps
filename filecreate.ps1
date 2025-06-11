# This is a comment in the script

# Get a list of all files in the current directory
Get-ChildItem

# Get the current date and time
Get-Date

# Print a message to the console
Write-Host "Hello, world!"

# Get the version of PowerShell you are using
Get-Host | Select-Object PSVersion

# Create a new file
New-Item -Path "C:\temp\newfile.txt" -ItemType File -Force

# Add some content to the new file
Add-Content -Path "C:\temp\newfile.txt" -Value "This is some sample text."

# Get the contents of the new file
Get-Content -Path "C:\temp\newfile.txt"