FROM python:3


WORKDIR /usr/src/python

COPY requirements.txt ./
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 7000
CMD ["python", "app.py"]