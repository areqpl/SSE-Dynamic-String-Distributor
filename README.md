# Dynamic String Distributor (DSD)

Dynamic String Distributor (DSD) is an SKSE plugin for dynamically replacing and distributing in-game text and strings in Skyrim Special Edition / Anniversary Edition without requiring hard esp/esm edits.

- [Nexus Mods Page](https://www.nexusmods.com/skyrimspecialedition/mods/107676)
- [Original Repository](https://github.com/SkyHorizon3/SSE-Dynamic-String-Distributor)

---

## Requirements & Compatibility

- **Skyrim Special Edition / Anniversary Edition**: Compatible with runtimes:
  - **1.7.99.0** (August 2026 update)
  - **1.6.1170 / 1.6.1130 / 1.6.640**
  - **1.5.97** (SE)
  - **Skyrim VR**
- **SKSE64**: Requires SKSE version **2.3.0** (or matching build for your runtime)
- **Address Library**: Requires [Address Library for SKSE Plugins](https://www.nexusmods.com/skyrimspecialedition/mods/32444) (`versionlib-1-7-99-0.bin` for 1.7.99.0)

---

## Changelog

### v1.5.0
- **Skyrim 1.7.99.0 & SKSE 2.3.0 Support:** Verified Address Library runtime relocation loading (`UsesAddressLibrary` + `UsesNoStructs`).
- **Automated CI/CD Workflow:** Added GitHub Actions build matrix (`.github/workflows/build.yml`) supporting universal MSVC compilation across SE, AE, and VR with automatic artifact bundling.
- **Dependency Refresh:** Bumped build targets and project definitions.

---

## Installation

1. Install **SKSE64** (v2.3.0+ for Skyrim 1.7.99.0).
2. Install **Address Library for SKSE Plugins** (All-in-One).
3. Install **Dynamic String Distributor** via your mod manager (Mod Organizer 2 / Vortex) or place `DynamicStringDistributor.dll` into `Data/SKSE/Plugins/`.

---

## Building from Source

```bash
# Configure with unified preset
cmake --preset ALL -B build

# Compile Release DLL
cmake --build build --config Release
```

