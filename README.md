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

### v1.5.2
- **Documentation & Manifest Link Repairs:** Repaired dead documentation link for JSON string escaping (`jsonformatter.org`) and updated `commonlibsse-ng` `$schema` and `homepage` manifest endpoints.
- **Portfile Hardening:** Ensured all 27 dependencies and vcpkg manifests use active, validated URLs and cryptographic hashes.

### v1.5.1
- **Cross-Platform Toolchain & Portfile Improvements:** Enhanced CMake configuration with `/FIPCH.h` forced header inclusion, reordered dependency discovery, and added robust overlay ports (`clib-util`, `srell`, `directxtk`).
- **Filesystem Parsing Fix:** Corrected scoping in `Manager::processFolders()` directory sorting.
- **Robust Exception Handling:** Wrapped hook thunks, lifecycle hooks, and filesystem operations with defensive try-catch handlers.

### v1.5.0
- **Skyrim 1.7.99.0 & SKSE 2.3.0 Support:** Full validation against official `offsets-1-7-99-0.txt` database (12/12 Address Library relocation IDs verified).
- **Runtime Safety Guards:** Added `REL::Module::IsSE()` checks to `DataHandlerInitAllForms` and `NPCFullNameCopyComponent` to prevent null/zero address trampoline crashes on AE / 1.7.99.0.
- **Relocation Mapping:** Mapped `CompileFiles` to AE ID `13745` (RVA `+0x001BE500`).
- **Hook Offset Verification:** Verified hook targets for `DialogueMenuTextHook` (ID `35254` @ `+0x115`, `+0x226` within 976-byte span) and `ReconstructForms` (ID `35566` @ `+0x25F` within 1,120-byte span).
- **Automated CI/CD Workflow:** Added GitHub Actions build matrix (`.github/workflows/build.yml`) supporting universal MSVC compilation across SE, AE, and VR with automatic artifact bundling.
- **Dependency & Version Refresh:** Bumped project to `1.5.0` in CMake and vcpkg manifests.

---

### Verified Address Library Relocations (Skyrim 1.7.99.0)

| Hook / Feature | SE ID (1.5.97) | 1.7.99.0 ID | 1.7.99.0 Address Offset | Status |
| :--- | :---: | :---: | :---: | :---: |
| `GetLogEntryHook` (Quest CNAM) | `24778` | **`25259`** | `+0x003E1CD0` | Verified |
| `GetDescription` (DESC / CNAM) | `14401` | **`14552`** | `+0x001E1380` | Verified |
| `GetResponseListHook` (INFO NAM1) | `25083` | **`25626`** | `+0x003F3300` | Verified |
| `DialogueMenuTextHook` (DIAL FULL, INFO RNAM) | `34434` | **`35254`** | `+0x005ED5D0` | Verified |
| `DataHandler::CompileFiles` | `13645` | **`13745`** | `+0x001BE500` | Verified |
| `DataHandler::ReloadPlugins` | `13672` | **`13783`** | `+0x001C3680` | Verified |
| `CopyComponentFromTESNPC` | `24216` | **`24726`** | `+0x003C2E00` | Verified |
| `CopyComponent` | `24160` | **`24670`** | `+0x003BE960` | Verified |
| `ReconstructForms` | `34644` | **`35566`** | `+0x00615430` | Verified |
| `Setting::SetStringValue` | `73882` | **`75619`** | `+0x00FC2130` | Verified |
| `ActivateTextOverrideMap` | `501445` | **`360165`** | `+0x0207AED8` | Verified |
| `setBSFixedString` | `15291` | **`15453`** | `+0x0020D150` | Verified |

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

