# deno-examples

Playground and examples for [ry/deno](https://github.com/ry/deno) using [maxmcd/deno-docker](https://github.com/maxmcd/deno-docker)

## PR's only

The issues have been disabled, only PR's are accepted :)

## Requirements

- Docker
- It's only tested on a Mac. YMMV on other OS'es, patches welcome.

## Run using Docker

You can run this container from the Docker registry and mount your local sources to `/apps` in the image.

```bash
cd path/to/your/scripts
docker run -it --rm -v $(pwd):/apps beeman:deno-examples bash
```

## Building the image

```bash
git clone https://github.com/beeman/deno-examples
cd deno-examples
make build && make run
```

## Running apps

You can now run the code from the `apps` folder:

```bash
deno ./hello-world.ts 
deno ./calc-test.ts
```

## MIT License