FROM python:2.7 

ENV PYTHONBUFFERED 1 


RUN mkdir /app 

WORKDIR /app 

ARG PROJECT_DIR=~/Users/cduong/desktop/badguys/src 

ADD requirements.txt /app/ 

RUN pip install -q -r requirements.txt 
RUN pip install tcell_agent 

ADD ./ app 

EXPOSE 8000
STOPSIGNAL SIGINT 

CMD ./entrypoint.sh
