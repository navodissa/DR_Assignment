This application is deployed in a Kubernetes Cluster. Following are the compenents used.
    - AWS EKS for Kubernetes Control Plane
    - Self managed AWS EC2 instances as Worker Nodes

Pre-requistis -
    You need to have following tools installed in your build server.
        - Terraform >= 1.0.10
        - Ansible 2.9
        - Jenkins >= 2.332.2
        - Kubectl 1.22
        - Docker >=20.10.6

Provisioning Infrastructure

In order to deploy the application, initially we have to provision the infrastructure.
Infrastructure code is written as modules. So these modules can be reused only chaning the parameter values.
Inside IaC directory, you can see modules deirectory, where all the custom modules are available for Shared-State, VPC and Cluster provisioning. In other directories, necessary parameters are available for your infrastructure provisioning.

You can use the available jenkinsfile(IaC/jenkinsfile) as a pipeline and provision the Cluster.

Provisioning Cluster Objects

I have used Ansible to provision Kubernetes objects. We can use Jinja2 templates to dynamically create kubernetes manifest files given only necessary parameters.

Jenkinsfile available under 'app' can be used to provision all the Kubernetes objects.
