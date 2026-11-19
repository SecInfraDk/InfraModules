# InfraModules

## Purpose

Publishes PowerShell modules reused across repositories.

## Example contents

IP2Mac, Mac2Ip, New-ISOFile, and New-Unattend.

## Scope

Modules used only by one repository stay with that repository. Consumers select the module versions they require.

## Dependencies

Import a module by its manifest path or place its module directory on PSModulePath. Module functions declare their own runtime requirements.
