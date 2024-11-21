# Check if Notepad++.Notepad++ is already installed
if (-not (Get-WinGetPackage -Id Notepad++.Notepad++ -ErrorAction SilentlyContinue)) {
    # If not installed, attempt to install the application
    $installResult = Install-WinGetPackage -Id Notepad++.Notepad++ -ErrorAction Stop

    # Check if the installation was successful
    if (-not $installResult) {
        throw "Failed to install Notepad++.Notepad++"
    } else {
        Write-Host "Notepad++.Notepad++ installed successfully."
    }
} else {
    Write-Host "Notepad++.Notepad++ is already installed."
}
