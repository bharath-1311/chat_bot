FROM python:3.8-slim

RUN python3 -m pip install --upgrade pip
COPY . .
#RUN python3 -m pip install pinecone
RUN python3 -m pip install -r requirements.txt
#RUN mkdir /pinecone && \
    #wget -O /pinecone/pinecone.tar.gz https://github.com/pinecone-io/pinecone-python/archive/main.tar.gz && \
    #tar -xzvf /pinecone/pinecone.tar.gz -C /pinecone --strip-components=1

# Install Pinecone from the downloaded source
#RUN cd /pinecone && \
    #python3 -m pip install .


EXPOSE 9001
CMD python3 pdf_chatbot.py
