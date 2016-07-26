FROM java:7
#COPY HelloWorld.java /
#RUN javac HelloWorld.java
#ENTRYPOINT ["java", "HelloWorld"]
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
ENV FOO bar
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
