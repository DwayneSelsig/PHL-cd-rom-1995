# PHL-CD-ROM-1995

A restored and emulated version of the official **Phantasialand promotional CD-ROM** from the mid-1990s, preserved and adapted to run on modern systems through emulation and web technology.

---

## Overview

Between the early and mid-1990s, Phantasialand distributed an **interactive CD-ROM** to visitors as a promotional and informational souvenir. The disc contains videos, images, and interactive content built with **Asymetrix ToolBook** and relies on **Video for Windows** components for multimedia playback.

This repository contains:
- Original runtime components required by the CD-ROM  
- Batch scripts for installing legacy dependencies ('TOOLBOOK.BAT', 'VFW.BAT')  
- Emulation setup to run the CD-ROM in a Windows 3.1 environment within a modern browser  

---

## Purpose

The aim of this project is to:

- Preserve and make accessible a piece of theme park history  
- Demonstrate how legacy multimedia software can be restored and run through emulation  
- Provide a working environment to explore the original CD-ROM as it appeared to visitors in the 1990s  

---

## Usage

1. Clone or download this repository.  
2. Launch the emulated environment (e.g., DOSBox + Windows 3.1 or a browser-based emulator).  
3. Run the included batch scripts to install runtime components:
   - 'TOOLBOOK.BAT' – installs the **Asymetrix ToolBook Runtime** and associates '.TBK' files.  
   - 'VFW.BAT' – installs **Video for Windows** components, video codecs, and audio drivers.  
4. Start the CD-ROM content from within the emulated Windows environment.

?? **Tip:** A mouse is required for interaction. The emulator works on desktops, tablets, and even smartphones if a mouse is connected.

---

## Technical Details

- **ToolBook Runtime:** Enables the playback of '.TBK' interactive content created with Asymetrix ToolBook.  
- **Video for Windows (VFW):** Provides essential multimedia capabilities, including AVI playback, MCI extensions, and audio codecs such as Microsoft ADPCM and IMA ADPCM.  
- **INI Modifications:** The batch scripts automatically update 'WIN.INI', 'SYSTEM.INI', and 'CONTROL.INI' to register file associations, drivers, and codec descriptions — just as the original installer did in the 1990s.

---

## Historical Context

The CD-ROM showcases Phantasialand as it appeared in the 1990s, including attractions that no longer exist, such as:

- **Scala** – an electronic animatronic theater show  
- **Gebirgsbahn** – a steel family roller coaster by Schwarzkopf (1975–2001)  
- **Gondelbahn 1001 Nacht** – a suspended dark ride (1970–2009)

These elements make the CD-ROM a valuable digital time capsule of the park’s history.

---

## License

This project is licensed under the **GPL-3.0 License**. See the 'LICENSE' file for details.

---

## Credits

- Original CD-ROM © Phantasialand, mid-1990s  
- Restoration and emulation by **Dwayne Selsig**  
- Archival materials provided via [Archive.org](https://archive.org/details/phantasialand-cdrom-1995)

