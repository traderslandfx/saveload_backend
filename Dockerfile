# base image  
FROM python:3.8   
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
RUN pip install --upgrade pip
COPY requirements.txt /code//

RUN pip install -r requirements.txt
COPY . /code/

ADD start.sh /
ADD manage.py /
RUN chmod +x /start.sh

EXPOSE 8000

CMD ["/start.sh"]
