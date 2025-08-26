# Atari Lynx development features for devcontainers

- [cc65](https://github.com/cc65/cc65)
  Full suite of cc65 tools and only target libraries for Atari Lynx built. It is optimized and not intended for use with other platforms.
- [lynxenc](https://github.com/42Bastian/new_bll/tree/master/lynxenc)
  Encryption and decryption tool with CLI for Atari Lynx  
- [lyxass](https://github.com/42Bastian/lyxass)
  Macro assembler of 6502, 65SC02 and 65C02 code intended for Atari Lynx
- make_lnx
  Tool to create LNX files from header-less (raw) Atari Lynx rom files (*.lyx)  
  Based on included C source code
- [new_bll](https://github.com/42Bastian/new_bll)
  Beyond Lynx Lines tools, macros and demos for Atari Lynx. Best used with lyxass assembler 
- [sprpck](https://github.com/42Bastian/sprpck)
  Sprite packer to generate binary sprite data from Windows Bitmap files (*.bmp)

In addition there are two non-Atari Lynx related features that might prove useful for cc65 developers on other platforms:

- [AtariSIO](https://github.com/HiassofT/AtariSIO)
- [Exomizer](https://bitbucket.org/magli143/exomizer)

You can add these features by specifying them in your `devcontainer.json` file.

```jsonc
{
    "image": "ghcr.io/atarilynx/templates/cc65:latest",
    "features": {
		"ghcr.io/atarilynx/devcontainer-features/cc65:latest": {},
		"ghcr.io/atarilynx/devcontainer-features/lynxenc:latest": {},
		"ghcr.io/atarilynx/devcontainer-features/lyxass:latest": {},
		"ghcr.io/atarilynx/devcontainer-features/make_lnx:latest": {},
		"ghcr.io/atarilynx/devcontainer-features/new_bll:latest": {},
		"ghcr.io/atarilynx/devcontainer-features/sprpck:latest": {}
    }
}
```
