FROM python:3.9

WORKDIR /code

COPY  ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./dashapp /code/dashapp

# ENV PYTHONPATH "${PYTHONPATH}:/code/dashapp"

EXPOSE 8050

CMD ["python", "./dashapp/app.py"]