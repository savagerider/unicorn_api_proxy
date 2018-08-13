FROM amazonlinux:2
RUN yum install -y python-pip unzip && yum clean all
COPY . /app
RUN pip install -r /app/requirements.txt
RUN chmod +x /app/start.sh
WORKDIR /app
CMD ./start.sh
