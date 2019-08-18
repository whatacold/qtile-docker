A Docker image for running test suites of [Qtile](https://github.com/qtile/qtile).

# How to use this image

1. `git clone https://github.com/qtile/qtile.git`
2. `cd qtile`
3. `sudo docker run -it --rm -v $PWD/:/qtile qtile-docker:1.0 pytest /qtile/test/test_bar.py` to run a specific test suite.
4. `sudo docker run -it --rm -v $PWD/:/qtile qtile-docker:1.0 make -C /qtile/ check` to run all test suites.

# How to build the image

Simply run `make` at the top-level directory of this repo.
