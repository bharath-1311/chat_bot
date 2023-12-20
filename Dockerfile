FROM python:3.9-slim
COPY . .
RUN python3 -m pip install -r requirements.txt
EXPOSE 9001
CMD python3 pdf_chatbot.py
