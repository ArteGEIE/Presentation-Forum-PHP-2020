# Presentation Forum PHP 2020

## Configuration

The configuration is in `reveal-md.json` in root directory.

```json
{
  "theme": "arte.css", // Edit the slide theme
  "highlightTheme": "night-owl" // Edit the code theme
}
```

See available [themes](https://github.com/highlightjs/highlight.js/tree/master/src/styles), [demo](https://highlightjs.org/static/demo/).

## Prerequirements

This project requires `docker` or `node`.

## With Docker

### Launch the project

```sh
make start-docker
```

Your talk is now available at http://localhost:1948/slides.md#/

### Export to HTML

```sh
make build-docker
```

HTML files are in `public` directory

### Export to PDF

```sh
make pdf-docker
```

`slides.pdf` is generate in the root

## With Node

### Install dependencies

```sh
make install
```

### Launch and watch the project

```sh
make start
```

Your talk is now available at http://localhost:1948/slides.md#/

### Export to HTML

```sh
make build
```

HTML files are in `public` directory
