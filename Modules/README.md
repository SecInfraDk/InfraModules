# Modules

## Purpose

Contains independently importable shared PowerShell modules.

## Example contents

Each module has a matching PSD1 manifest, PSM1 loader, Public functions, and Private helpers.

## Scope

The module root contains metadata and loading logic. Consumer entry scripts stay in their own repositories.

## Dependencies

The loader loads Private scripts before Public scripts and exports the functions defined at the top level of Public files.
