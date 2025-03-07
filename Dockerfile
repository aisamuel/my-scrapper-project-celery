FROM python-3.12.1
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .
ENTRYPOINT [ "/bin/sh" ]
CMD [ "./docker.celery.sh" ]