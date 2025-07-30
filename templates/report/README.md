# University of Münster Typst Template

This is a fork of the Typst template written by [Lasse Rosenow](https://github.com/juriroemer/University-Muenster-Typst-Template).

This is an **`unofficial`** template for writing a report or thesis at the `University of Münster` using [Typst](https://github.com/typst/typst).

## Goals of this fork

This fork aims to stay as close as possible to the upstream version, with just a few (cosmetic) tweaks:

- [x] adapt strings, graphics and cover to University of Münster
- [x] add option to define a working group
- [ ] add alternative cover page option in the style commonly used at the University of Münster

## Required Fonts

To correctly render this template please make sure that the `New Computer Modern` font is installed on your system.

## Usage

I don't want to spam the Typst Universe with different versions of the same template, so to use the template, please clone this repository and import the local clone. This may change in the future, if this template diverges further from upstream.

E.g.:

```typst
#import "./University-Muenster-Typst-Template/lib/lib.typ": report

#show: report.with(
  language: "en",
  title: "Example title",
  author:"Example author",
  faculty: "Mathematics and Computer Science",
  department: "Computer Science",
  include-declaration-of-independent-processing: true,
)
```

## How to Compile

This project contains an example setup that splits individual chapters into different files.\
This can cause problems when using references etc.\
These problems can be avoided by following these steps:

- Make sure to always compile your `main.typ` file which includes all of your chapters for references to work correctly.
- VSCode:
  - Install the [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) extension.
  - Make sure to start the `PDF` or `Live Preview` only from within your `main.typ` file.
  - If problems occur it usually helps to close the preview and restart it from your `main.typ` file.
