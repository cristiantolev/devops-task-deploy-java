# devops-task-deploy-java

The goal of this project is to deploy a Java application inside a K8S cluster hosted on GCP.
The application is set to be accessible from the outside world.


The configuration performs the following tasks:
- Create a new cluster 
- Create a new VM and install a new Jenkins instance on it.
- Dockerize the Java application.
- Jenkins file that performs the following:
    * Track the application repo changes.
    * Build a Docker image.
    * Push the Docker image to a public registry.
    * Deploy the application inside the K8S cluster.

The Terrafom folder contains definitions that can be used for creating the K8S cluster and a VM for Jenkins.
The App folder contains the Spring Boot application that we are deploying.
