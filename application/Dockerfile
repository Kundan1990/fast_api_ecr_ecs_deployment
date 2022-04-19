FROM python:3.9-slim
COPY ./src /app/src
COPY ./requirement_project.txt /app/requirement_project.txt

WORKDIR /app

RUN pip3 install -r requirement_project.txt
EXPOSE 8000

CMD [ "uvicorn","src.main:app", "--host=0.0.0.0","--reload"]
