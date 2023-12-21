FROM python:3.9-slim

RUN python3 -m pip install --upgrade pip
COPY . .
RUN python3 -m pip install -r requirements.txt
RUN mkdir -p /pinecone && \
    curl -L https://github.com/pinecone-io/pinecone-python/archive/main.tar.gz | tar xvz -C /pinecone --strip-components=1
RUN python3 -m pip install pinecone
EXPOSE 9001
CMD python3 pdf_chatbot.py
