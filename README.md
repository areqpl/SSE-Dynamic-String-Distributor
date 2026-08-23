# Dynamic String Distributor (DSD)

Dynamic String Distributor (DSD) is an SKSE plugin for dynamically replacing and distributing text and strings in Skyrim Special Edition / Anniversary Edition.

- [Nexus Mods Page](https://www.nexusmods.com/skyrimspecialedition/mods/107676)

## Requirements & Compatibility

- **Skyrim Special Edition / Anniversary Edition**: Compatible with runtime versions up to **1.7.99.0** (as well as 1.5.97 and 1.6.x)
- **SKSE64**: Requires SKSE version **2.3.0** (or corresponding build for your runtime)
- **Address Library**: Requires [Address Library for SKSE Plugins](https://www.nexusmods.com/skyrimspecialedition/mods/32444)

## Installation

1. Install SKSE64 and Address Library for SKSE Plugins.
2. Install Dynamic String Distributor via your mod manager (MO2, Vortex) or copy the files into your Skyrim `Data/` directory.

## Building

```bash
cmake --preset ALL -B build
cmake --build build --config Release
```
