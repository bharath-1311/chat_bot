FROM python:3.8-slim

RUN python3 -m pip install --upgrade pip
COPY . .
#RUN python3 -m pip install pinecone
RUN python3 -m pip install -r requirements.txt


EXPOSE 9001
CMD python3 pdf_chatbot.py
