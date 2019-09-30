FROM ddidier/sphinx-doc

# Repository mirrors are must-have for me.
COPY fsroot/ /

RUN pip install -r /image-build-dir/requirements.txt

CMD ["python"]
