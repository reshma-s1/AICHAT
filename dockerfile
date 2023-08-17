FROM python:3.9-slim


COPY . /app/

WORKDIR /app/


RUN pip install -r requirements.txt

EXPOSE 80

#HEALTHCHECK CMD curl --fail http://localhost:8501/chatai

ENTRYPOINT ["streamlit", "run", "app.py"]
#"--server.port=8501", "--server.address=123.456.789.0"]