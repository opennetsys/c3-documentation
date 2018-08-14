# Documentation

> The Official C3 API Documentation

- [https://docs.c3labs.io](https://docs.c3labs.io)
- [https://ipfs.io/ipns/docs.c3labs.io/](https://ipfs.io/ipns/docs.c3labs.io/)

## Development

### Requirements:

- Ruby version >= 2.3.3
- JavaScript runtime such as NodeJS (for building)

### Install bundler

```
gem install bundler
```

### Ubuntu dependencies

```
sudo apt-get install build-essential patch ruby-dev zlib1g-dev liblzma-dev
sudo apt-get install nodejs
```

### macOS dependencies

```
xcode-select --install
```

### Install gems

```
make install
```

### Run webserver

```
make serve
```

### Create build

```
make build
```

## Swagger to Slate

Install conversion tool

```
npm install -g widdershins
```

Swagger to Slate markdown

```
widdershins swagger.json --expandBody
```

## License

Apache 2.0