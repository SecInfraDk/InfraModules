$ErrorActionPreference = 'Stop'

# Load private helpers before the module's public commands.
$privateFolder = Join-Path $PSScriptRoot 'Private'
$publicFolder = Join-Path $PSScriptRoot 'Public'
$publicScripts = @(Get-ChildItem -LiteralPath $publicFolder -Filter '*.ps1' -File -ErrorAction Stop | Sort-Object Name)
$privateScripts = @(Get-ChildItem -LiteralPath $privateFolder -Filter '*.ps1' -File -ErrorAction Stop | Sort-Object Name)

foreach ($scriptFile in @($privateScripts) + @($publicScripts)) {
    try {
        . $scriptFile.FullName
    }
    catch {
        throw "Failed to load '$($scriptFile.FullName)': $($_.Exception.Message)"
    }
}

# Public filenames match the function names they expose.
Export-ModuleMember -Function @($publicScripts.BaseName) -Alias @()
