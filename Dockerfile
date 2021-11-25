FROM redhat/ubi8
RUN yum update -y
RUN yum install -y python3
RUN pip3.6 install --upgrade pip
RUN pip3.6 install flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
#ENTRYPOINT /bin/bash
