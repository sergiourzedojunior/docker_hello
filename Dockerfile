FROM python:3.9-slim-buster

RUN pip install streamlit

WORKDIR /app

COPY hello.py .

CMD ["streamlit", "run", "hello.py", "--server.port=8050", "--server.address=0.0.0.0"]