# Presentation Forum PHP 2020

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

## With Node

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

### Export to PDF

```sh
make pdf
```

`slides.pdf` is generate at the root
