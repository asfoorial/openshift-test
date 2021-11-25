FROM redhat/ubi8
RUN yum update -y
RUN yum install -y python3
RUN pip3.6 install --upgrade pip
RUN pip3.6 install flask
COPY app.py /opt/
EXPOSE 8080
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=localhost --port=8080
#ENTRYPOINT /bin/bash
