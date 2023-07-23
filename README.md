"# Assignment_Thoughtwors" 


# MEDIAWIKI PROBLEM STATEMENT

Kubernetes with Helm Chart/ any equivalent automation with own Dockerfiles for application and database.
Terraform or any IaC tool with any Configuration Management tool integrated.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)

## Followed Steps

I have followed Mediawiki Installed locally first without Jenkins pipeline with command line. Below are the steps are followed.

- Installed Minikube , kubectl and helm on my local windows10 machine to use as a Virtual Box.
- Post successful Installed outside of Jenkins, I have Installed Jenkins on Win10 and created a pipeline running through terraform managing variables.tfvars


## Evidences for the Install and steps

After minikube Install successfull shows api server and control plane status

![Screenshot 1](/images/apiserver.png)

Kubernetes API Server authentication:

![Screenshot 2](/images/apiauth.png)

After minikube setup kubectl commands output:

![Screenshot 3](/images/afterclusterkube.png)



## Contributing

If you'd like to contribute to the project, provide guidelines for how others can do so.

## License

Specify the license under which your project is distributed. For example:

This project is licensed under the [MIT License](LICENSE).

