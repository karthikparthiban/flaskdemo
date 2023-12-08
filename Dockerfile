FROM python:3.8-slim-buster
 
WORKDIR /app
 
COPY requirements.txt requirements.txt
 
RUN pip3 install -r requirements.txt
 
COPY . .
 
RUN pip3 install Werkzeug==2.0.2


CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
