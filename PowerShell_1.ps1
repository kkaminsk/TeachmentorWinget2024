# Check if the Microsoft.WinGet.Client module is already installed
if (-not (Get-InstalledModule -Name Microsoft.WinGet.Client -ErrorAction SilentlyContinue)) {
    # If not installed, install the module
    Install-Module -Name Microsoft.WinGet.Client -Force
}

# Import the Winget module
Import-Module Microsoft.WinGet.Client
