FROM python:3.6.9-buster

# Repository mirrors are must-have for me.
COPY fsroot/ /

RUN apt-get update && \
    apt-get install -y python3-pytest xserver-xephyr xvfb lxrandr x11-apps xterm \
            python3-pip libdbus-glib-1-dev libgirepository1.0-dev libiw-dev && \
    apt-get clean

RUN pip install -U pip setuptools && \
    pip install -r /image-build-dir/requirements.txt

CMD ["python"]
