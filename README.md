# mini-cv

This repository provides a LaTeX template for creating a concise curriculum vitae (CV). The distinguishing feature of this project is the custom class file `template.cls`, which defines styles and new commands to make CV creation easy and consistent.

## Features

- **Custom Class:** All CV styling and new commands are defined in `template.cls`.
- **New Commands:** Includes commands for section formatting, work items, name display, and layout helpers for left/right text alignment. See `template.cls` for details.
- **Main File:** The central entry point for compiling your CV is `cv.tex`.

## LaTeX Requirements

- **Base Class:** Uses the standard `article` class.
- **Packages:**
  - `titlesec`
  - `etoolbox`
  - `fontspec` (recommended fonts: Calibri, Calibri Bold)

## New Commands (from `template.cls`)

- `\name`
- `\leftrighttext`
- `\datedsection` / `\datedsubsection`
- `\subsectionLarge`
- `\content`
- `\workitems`
- Custom section formats for clean CV layout

## Compiling

Use `latexmk` or `lualatex` to build your CV:

```sh
latexmk cv.tex
# or
lualatex cv.tex
```

### macOS Installation

To install a minimal TeX distribution, use:

```sh
brew install --cask basictex
```

For a complete distribution and richer features, visit [MacTeX](https://tug.org/mactex).

## Docker

Docker setup is planned. Stay tuned for updates.

## Makefile Usage

A `Makefile` is provided for automation:

- **make build**  
  Compiles the CV using `lualatex`.
  - Optional environment variables:
    - `TARGET` (default: `cv`): Output file name (without extension).
    - `SOURCE` (default: `cv.tex`): Source LaTeX file.
  - Example:
    ```sh
    make build TARGET=mycv SOURCE=main.tex
    ```

- **make clean**  
  Cleans up auxiliary LaTeX files.  
  (Runs `make build` before cleaning.)
  - Removes: `.aux`, `.log`, `.out` files.

- **make**  
  Equivalent to `make build` (default: builds `cv.tex` into `cv.pdf`).

---

For further details about LaTeX, visit [latex-project.org](https://www.latex-project.org/).
