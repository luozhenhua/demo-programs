FROM openjdk

RUN cd /tmp && git clone http://github.com/luozhenhua/demo-programs.git \
    && cd demo-programs && javac HelloWorld.java \
    && jar -cmvf MANIFEST.MF HelloWorld.jar HelloWorld.class
