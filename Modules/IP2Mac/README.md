# IP2Mac

## Purpose

Encodes an IPv4 address into a MAC address using the existing BC-24 prefix.

## Example contents

`Import-Module '.\IP2Mac.psd1'`, then `IP2Mac -IpAddress '192.0.2.10'`.

## Scope

This is a custom address mapping used by the deployment design.

## Dependencies

Requires a valid IPv4 address in the format expected by the existing function.

## Loading convention

The PSM1 loader loads Private/*.ps1 first, followed by Public/*.ps1, in filename order. Each Public file defines a function matching its filename. Only Public function names are exported. Import stops if a source file fails to load. Scripts are loaded from the module directory independently of the current working directory.
