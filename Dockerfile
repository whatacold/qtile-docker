FROM python:3.6.9-buster

# Repository mirrors are must-have for me.
COPY fsroot/ /

RUN apt-get update && \
    apt-get install -y python3-pytest xserver-xephyr xvfb lxrandr x11-apps xterm \
            python3-pip libdbus-glib-1-dev libgirepository1.0-dev libiw-dev && \
    apt-get clean

RUN pip install --no-cache-dir -U pip setuptools && \
    pip install --no-cache-dir 'xcffib >= 0.5.0' && \
    # XXX Sadly, cairocffi must be installed after xcffib,
    # see this: https://github.com/qtile/qtile/issues/994
    pip install --no-cache-dir 'cairocffi >= 0.9.0' && \
    pip install --no-cache-dir -r /image-build-dir/requirements.txt

CMD ["python"]
