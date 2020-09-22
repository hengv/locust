FROM python:3.7.9
ADD task /task
RUN pip install -r /task/requirements.txt

EXPOSE 5557 5558 8089

RUN chmod 755 /task/run.sh

ENTRYPOINT ["/task/run.sh"]
