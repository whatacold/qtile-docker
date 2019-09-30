Docker images for developing [Qtile](https://github.com/qtile/qtile):
- `qtile-docker`, for running pytest test suites
- `qtile-sphinx-docker`, for generating the documentations

# How to use these images

## `qtile-docker`

1. `git clone https://github.com/qtile/qtile.git`
2. `cd qtile`
3. `sudo docker run -it --rm -v $PWD/:/qtile qtile-docker:1.0 pytest /qtile/test/test_bar.py` to run a specific test suite.
4. `sudo docker run -it --rm -v $PWD/:/qtile qtile-docker:1.0 make -C /qtile/ check` to run all test suites.

## `qtile-sphinx-docker`

1. `git clone https://github.com/qtile/qtile.git`
2. `cd qtile`
3. `sudo docker run -it --rm -v $PWD/:/qtile qtile-sphinx-docker:1.0 make -C /qtile/docs html` to generate documentations in HTML format.

# How to build these images

Simply run `make` at the top-level directory of this repo.
