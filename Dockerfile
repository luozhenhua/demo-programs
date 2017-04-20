FROM frolvlad/alpine-openjdk7

RUN apk update && apk add git \
    cd /tmp && git clone http://github.com/luozhenhua/demo-programs.git \
    && cd demo-programs && javac HelloWorld.java \
    && jar -cmvf MANIFEST.MF HelloWorld.jar HelloWorld.class
