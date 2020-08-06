# DEVOPS_TASK2
DEVOPS_TASK2

 #### 1. Create container image that’s has Jenkins installed  using dockerfile.
 #### 2. When we launch this image, it should automatically starts Jenkins service in the container.
 #### 3. Create a job chain of job1, job2, job3 and  job4 using build pipeline plugin in Jenkins.
 #### 4. Job1 : Pull  the Github repo automatically when some developers push repo to Github.
 #### 5. Job2 : By looking at the code or program file, Jenkins should automatically start the respective language interpreter install image container to deploy code ( eg. If code is of  PHP, then Jenkins should start the container that has PHP already installed ).
 #### 6. Job3 : Test your app if it  is working or not. If app is not working , then send email to developer with error messages.
 #### 7. Job4 : If container where app is running. fails due to any reson then this job should automatically start the container again.
 
 
 ## Pre-requisite :
  * OS: Base OS is Windows 10. Server OS is RedHat Enterprise Linux 8 (RHEL8) in Virtual Box.
  * In RHEL8 some of the softwares needed are Docker (also need the php image downloaded in it), Jenkins (also github, build pipeline and email extension plugin should be installed in it).
  * In Windows we need git bash software.
  * At the starting stop the firewalld in RHEL8 and start the docker and jenkins services.
  * oneshoud have to set the buid triggers and webhook and do configurations in jenkins while building jobs
  * one should have knowledge about jenkin chaining, how to use github plugin to integrate github,
webhooks, some shell scripting knowledge(linux commands) , docker knowledge ,git hooks
 
 ## steps to achieve this task :
 
 ### 1. Creating Dockerfile and Building Image using it 
 
 https://github.com/sahanabalappa/DEVOPS_TASK2/blob/master/Dockerfile
 
 ### 2. Jenkins Job1 :
 
 https://github.com/sahanabalappa/DEVOPS_TASK2/blob/master/JOB1
 
 ### 3. Jenkins Job2 :
 
 https://github.com/sahanabalappa/DEVOPS_TASK2/blob/master/JOB%202
 
 ### 4. Jenkins Email Configuration :
 
 https://github.com/sahanabalappa/DEVOPS_TASK2/blob/master/mail.rc
 
### 5. Jenkins Job3 and 4 :
 
 https://github.com/sahanabalappa/DEVOPS_TASK2/blob/master/JOB%203%20and%204
 
### 6. Jenkins Jobs 5:

## Future Possibilities :

##### We can create same setup in Cloud Services.

