
# Spring Application Development and Kubernetes Deployment 





## I. Context
I am working on a project to develop a Spring application for Inventiv IT (the application's source code is above). As a DevOps, I must ensure that the development and deployment processes are functioning correctly. The development team is using GitLab for version control, collaboration, and continuous integration



## II. Objectives


- We will verify that the application can be compiled and executed correctly.
- We will test the basic functionalities of the application to ensure they work properly.
- We will verify that the deployment of the application on a test K8S cluster proceeds without errors.

## III. Realisation
### 1. Setting up our local test environment
#### 1.1 Cloning the GitLab repository containing the application

![1](https://github.com/youssefjeh/Installing-Minikube-on-Ubuntu/assets/85554678/9bde8929-c9e7-4061-b858-41357623e46a)

#### 1.2 Adequate verification of the application's dependencies

We make sure that we are in the root directory of our Maven project, where the pom.xml file is located.

![2](https://github.com/youssefjeh/Installing-Minikube-on-Ubuntu/assets/85554678/e6337b9e-fd74-4fc3-9389-d179390808d3)

   If there are missing dependencies or if there are other issues, Maven will display error messages.

![2 5](https://github.com/youssefjeh/Installing-Minikube-on-Ubuntu/assets/85554678/51851ee5-b2cc-43d8-a324-e817650e0a94)

#### 1.3 Compilation of the application

![4](https://github.com/youssefjeh/Installing-Minikube-on-Ubuntu/assets/85554678/24fb4cf8-9137-4103-bf06-f01e6be896ad)

#### 1.4 Execution of the HTTP request.
Accessing localhost:8080/ with appropriate verification to ensure that the following message is displayed correctly: "Spring is here!"

![5](https://github.com/youssefjeh/Installing-Minikube-on-Ubuntu/assets/85554678/4ee535fa-43af-4122-8e1d-0d4b43ae8de9)


### 2. Setting up continuous integration
#### 2.1 DockerFile

![w](https://github.com/youssefjeh/Installing-Minikube-on-Ubuntu/assets/85554678/1534a777-69ae-48df-bcda-97259d3e7142)

#### 2.2 deployement.yml

![d](https://github.com/youssefjeh/Installing-Minikube-on-Ubuntu/assets/85554678/39341799-d5de-493f-9e5d-0f58f36bcce8)

#### 2.3 .gitlab-ci.yml

First, we define the variables we will need in the .gitlab-ci.yml file by accessing Our `project > Settings > CI/CD > Variables`

![var](https://github.com/youssefjeh/Installing-Minikube-on-Ubuntu/assets/85554678/f8c00483-8ce0-4242-8801-a17ceded885a)

In `Google Cloud Platform (GCP)`, we create a `Kubernetes (k8s) cluster.`

![cl](https://github.com/youssefjeh/Installing-Minikube-on-Ubuntu/assets/85554678/7163e250-8c35-40e8-a508-6057945d9467)

Here is our Docker image on `DockerHub.`

![do](https://github.com/youssefjeh/Installing-Minikube-on-Ubuntu/assets/85554678/6de33fed-d97c-4a6a-813d-96ac04d094a4)

Here is the `.gitlab-ci.yml file.`

![g](https://github.com/youssefjeh/Installing-Minikube-on-Ubuntu/assets/85554678/d75fb5fd-61fe-40b4-972d-3bcf4ba35e1f)

### 3. Testing the application on the test environment: K8S Cluster.

![po](https://github.com/youssefjeh/Installing-Minikube-on-Ubuntu/assets/85554678/7df77b2f-51b1-4063-8814-58a85668fd60)

 `Services & Ingress:`

![sv](https://github.com/youssefjeh/Installing-Minikube-on-Ubuntu/assets/85554678/88d92498-ad9e-47df-b561-fa3bb63d400e)

So, we only need to make the HTTP request to `http://34.41.201.101:8080/`

![r](https://github.com/youssefjeh/Installing-Minikube-on-Ubuntu/assets/85554678/96329b70-fa9d-4db8-bf76-3c43c816a8a6)






