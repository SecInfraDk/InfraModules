# New-ISOFile

## Purpose

Creates ISO images from a source directory, optionally with boot media.

## Example contents

`Import-Module '.\New-ISOFile.psd1'`, then `New-ISOFile -source 'C:\Media' -destinationIso 'C:\Output\Config.iso'`.

## Scope

Deployment and platform code supply source assets and the destination.

## Dependencies

Requires Windows and the IMAPI2FS COM components. Boot media also uses ADODB.Stream. The function supports Windows PowerShell 5 and PowerShell 7.

## Loading convention

The PSM1 loader loads Private/*.ps1 first, followed by Public/*.ps1, in filename order. Each Public file defines a function matching its filename. Only Public function names are exported. Import stops if a source file fails to load. Scripts are loaded from the module directory independently of the current working directory.
