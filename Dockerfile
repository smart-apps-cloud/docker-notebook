FROM jupyter/datascience-notebook:latest

RUN apt-get update \
&& apt-get install -y wget \
&& rm -rf /var/lib/apt/lists/*

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

EXPOSE 8889

CMD ["sh", "-c", "jupyter notebook --port=8889 --no-browser --ip=*"]
