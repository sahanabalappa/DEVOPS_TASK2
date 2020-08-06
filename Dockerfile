FROM centos:latest
RUN yum install sudo -y
RUN yum install python3 -y
RUN yum install mailx -y
RUN yum install net-tools -y
RUN yum install wget -y
RUN yum install java-11-openjdk.x86_64 -y
RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN yum install openssh-clients -y
RUN yum install sudo -y
RUN yum install jenkins -y
RUN yum install /sbin/service -y
RUN  mkdir /workdir
COPY ./check_forext.py /workdir/
RUN mkdir /storage/
COPY  ./mail.rc  /etc/mail.rc
RUN echo -e "jenkins ALL(=ALL) NOPASSWD: ALL" >> /etc/sudoers
CMD java -jar /usr/lib/jenkins/jenkins.war
EXPOSE 8080


#FROM is used for the image to be used

#RUN is used for executing command while building the new image, so that features will be pre installed

#CMD  is used to run a=command at the run time not at the build time and only one CMD should be there in one Dockerfile

#Expose is used to expose the docker port as docker is isolated we have to enable Port Address Translation 
#and is also used to inform  that which port is exposed to the other techonolgies or tools or commands.

#COPY is used to copy the file from the base os to image at build time.


#IN THE DIRECTORY WHERE YOU HAVE COPIED this,  THE mail.rc and  check_forext.py should be copied there only as per my defined Dockerfile

# TO BUILD THE IMAGE USE THE COMMAND :

#docker build -t imagename:version  folder where the Dockerfile u have copied.

#and for running the conatiner from this image use command:

#docker run -it -P --name containername imagename:version

#U CAN ACCESS THE JENKINS FROM 
#base os using BASEDOCKERHOSTIP:PORT MAPPED .
#u can see the port number to which 8080 port of the container is mapped using netstat -tnlp 



