# geminabox

Simple [Geminabox](https://github.com/geminabox/geminabox) Docker image variant,
configured to proxy from RubyGems.org.

## Usage

### Build

```sh
docker build -t local/geminabox .
```

### Run

If `/work` directory inside container has any `.gemspec` files, every time it changes
`gem build` will be performed, and generated `.gem` file will be uploaded to running
instance of Geminabox.

```sh
docker run -dt --name geminabox -p 3000:3000 -v $PWD:/work -w /work local/geminabox
```
