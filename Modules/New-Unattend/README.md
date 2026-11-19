# New-Unattend

## Purpose

Generates Windows unattended setup XML.

## Example contents

`Import-Module '.\New-Unattend.psd1'`, then `New-Unattend -ComputerName 'APP01'`.

## Scope

Returns configuration content. The caller writes and supplies the file to Windows setup.

## Dependencies

Requires deployment parameters for the desired setup. The current function includes existing organization, owner, locale, and time-zone defaults.

## Loading convention

The PSM1 loader loads Private/*.ps1 first, followed by Public/*.ps1, in filename order. Each Public file defines a function matching its filename. Only Public function names are exported. Import stops if a source file fails to load. Scripts are loaded from the module directory independently of the current working directory.
