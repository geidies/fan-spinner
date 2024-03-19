# Fan spinner

## Description
For those poor people who never heard the fan of their m2 MacBook. Or if you want to simulate running another project on a slow computer.

Under the hood, it calculates PI in as many threads as the machine it is running on reports CPU cores. It's using the [Taylor Series](https://math.hmc.edu/funfacts/taylor-made-pi/)as a nicely inefficient algorithm to do so.

## Run
mruby doesn't have native threads, so it only saturates one CPU core. You get better results with jruby, so that should be installed, e.g. with rbenv:
```
brew install rbenv
rbenv install jruby-9.3.8.0
```

## Package
You can also build a docker container from it
