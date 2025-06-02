# Replace with your NAS share path and desired drive letter.
$nasDriveLetter = "Z"
$nasSharePath = "\\nas-server\share-name\installer.exe"

# Map the NAS share to a local drive.
New-PSDrive -Name $nasDriveLetter -PSProvider FileSystem -Root $nasSharePath -Persist -ErrorAction Stop

# Execute the installer.  Use -Wait to ensure the installation completes.
# Add any necessary installation arguments.
try {
    Start-Process $nasDriveLetter:\installer.exe -Wait -ArgumentList "/silent /norestart"  # Example silent install
}
catch {
    Write-Error "Installer failed: $($_.Exception.Message)"
    # Optionally handle the failure (e.g., cleanup, logging)
}
finally {
    # Remove the mapped drive after installation.
    Remove-PSDrive -Name $nasDriveLetter -Force -ErrorAction SilentlyContinue
}