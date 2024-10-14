FROM ubuntu:20.04

RUN apt-get update

RUN apt-get install -y curl

RUN curl -fsSL https://ollama.com/install.sh | sh

RUN apt-get install python3-pip -y

RUN pip install ollama

#?
ENV OLLAMA_HOST=0.0.0.0:11434 

COPY . .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
