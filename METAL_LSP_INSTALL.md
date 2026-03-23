# Metal LSP Installation Guide

Quick reference for installing metal-lsp on a new machine.

## Prerequisites

- macOS (required for Metal compiler)
- Swift 5.9 or later
- Xcode Command Line Tools

## Installation Steps

1. **Build metal-lsp from source:**

```bash
cd /tmp
git clone https://github.com/TimPapler/metal-lsp.git
cd metal-lsp
swift build -c release
```

2. **Install the binary:**

```bash
mkdir -p ~/.local/bin
cp .build/release/metal-lsp ~/.local/bin/
chmod +x ~/.local/bin/metal-lsp
```

3. **Verify installation:**

```bash
~/.local/bin/metal-lsp --help
```

## Neovim Configuration

The configuration is already in `init.lua`:

- **Filetype detection** (line ~298): Associates `.metal` files with 'metal' filetype
- **LSP config** (line ~836): Defines metal_lsp server settings
- **Non-Mason setup** (line ~923): Includes metal_lsp in non-Mason servers list
- **Treesitter** (line ~1189): Registers cpp parser for metal syntax highlighting

No additional Neovim config needed - just install the binary and restart Neovim.

## Verification

Open a `.metal` file and run:
- `:LspInfo` - should show metal_lsp as active
- `:Inspect` - should show treesitter highlighting groups
