# Mac2Ip

## Purpose

Decodes an IPv4 address from the final four octets of a MAC address.

## Example contents

`Import-Module '.\Mac2Ip.psd1'`, then `MAC2IP -MACAddress 'BC-24-C0-00-02-0A'`.

## Scope

Pairs with the custom IP2Mac address mapping.

## Dependencies

Input formatting follows the existing MAC2IP implementation. Conversion behavior has not been revised as part of module packaging.

## Loading convention

The PSM1 loader loads Private/*.ps1 first, followed by Public/*.ps1, in filename order. Each Public file defines a function matching its filename. Only Public function names are exported. Import stops if a source file fails to load. Scripts are loaded from the module directory independently of the current working directory.
