## Docker Image with Jenkins installed along with Java Maven and Node
This docker image build on top of jenkins/jenkins:lts also includes java(openjdk) , maven and nodejs

### Step 1 : Pull and Run the image from docker hub
```
docker run -d -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home shiveshnavin/jenkins-java-mvn-node
```

### Step 2 : Retrieve container ID
```
docker ps
```

### Step 3 : Retrieve the temp password

```
 docker exec -it <your-container-id> cat /var/jenkins_home/secrets/initialAdminPassword
```

Navigate to to port host:8080 and configure jenkins
