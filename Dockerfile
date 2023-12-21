FROM python:3.9-slim

RUN python3 -m pip install --upgrade pip
COPY . .
#RUN python3 -m pip install -r requirements.txt
RUN apt-get update && \
    apt-get install -y git && \
    python3 -m pip install -r requirements.txt

RUN python3 -m pip install pinecone
EXPOSE 9001
CMD python3 pdf_chatbot.py
