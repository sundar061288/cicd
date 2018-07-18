FROM sundar061288/cicd:base

RUN apt-get update && apt-get install python2.7 -y
RUN apt-get install wget -y
RUN mkdir /app
RUN wget -O /app/hello.js https://raw.githubusercontent.com/sundar061288/cicd/master/hello.js
RUN wget -O /init.py https://raw.githubusercontent.com/sundar061288/cicd/master/init.py
RUN chmod 777 /init.py && chmod 777 /app/hello.js
CMD ["python2.7", "init.py"]

