"# Assignment_Thoughtwors" 


# MEDIAWIKI PROBLEM STATEMENT

Kubernetes with Helm Chart/ any equivalent automation with own Dockerfiles for application and database.
Terraform or any IaC tool with any Configuration Management tool integrated.

## Table of Contents
- [Followedsteps](#followedsteps)
- [EvidencesInstallandsteps](#evidencesinstallandsteps)
- [Contributing](#contributing)
- [License](#license)

## Followedsteps

I have followed Mediawiki Installed locally first without Jenkins pipeline with command line. Below are the steps are followed.

- Installed Minikube , kubectl and helm on my local windows10 machine to use as a Virtual Box.
- Post successful Installed outside of Jenkins, I have Installed Jenkins on Win10 and created a pipeline running through terraform managing variables.tfvars


## EvidencesInstallandsteps

### After minikube Install successfull shows api server and control plane status

![Screenshot 1](/images/apiserver.png)

Kubernetes API Server authentication:

![Screenshot 2](/images/apiauth.png)

After minikube setup kubectl commands output:

![Screenshot 3](/images/afterclusterkube.png)

Helm manual Install 

![Screenshot 4](/images/helmInstalled_man.png)


![Screenshot 5](/images/kubeInfo.png)

Complete deployment status :

![Screenshot 6](/images/compdeply.png)

Validate deployment accessing application :

![Screenshot 7](/images/validatedeploy.png)

Jenkins setup on local machine :

![Screenshot 8](/images/jenkinssetup.png)

Jenkins console output has been attached In the repo:

Jenkins config :

![Screenshot 9](/images/Jenkin_settings.png)

Post Jenkins build cluster output :

![Screenshot 10](/images/Jenkinsbuildclusterout.png)


Post Jenkins build cluster deployment applicaiton output :

![Screenshot 11](/images/Jenkinsdeployoutput.png)

Install the package with in container :

![Screenshot 12](/images/Installpackcontainer.png)


## Contributing

If you'd like to contribute to the project, provide guidelines for how others can do so.

## License

Specify the license under which your project is distributed. For example:

This project is licensed under the [MIT License](LICENSE).

