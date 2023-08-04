# Venkat_Assignment

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

I have followed creating own dockerfile for Mediawiki to create an Image and push in to dockerhub. Used Jfrog Artifactory to push helm package and Install application using Helm from Artifactory followed by Jenkins pipeline. Below are the steps are followed.

- Installed Minikube , kubectl , helm and Jfrog CLI (jf) on my local windows10 machine to use as a kubernetes cluster (docker).
- Post successful Installed outside of Jenkins, I have Installed Jenkins on Win10 and created a pipeline running through terraform managing variables.tfvars


## EvidencesInstallandsteps

### After minikube Install check the status for API Server status

![Screenshot 1](/images/clusterinfo.png)

After minikube setup kubectl commands output:

![Screenshot 3](/images/afterclusterkube.png)

Docker run the mariadb and mediawiki from own dockerfile

![Screenshot 5](/images/dockerbuild.png)

Custom MariaDB details:

![Screenshot 5](/images/runtimemariadb.png)

Push Docker images to Hub:

![Screenshot 6](/images/dockerpush.png)

![Screenshot 6](/images/dockerhubimages.png)

Jfrog CLI Install

![Screenshot 6](/images/jfroginstall.png)

Use Helm to create a template and customize with values.yaml file to create Helm package. Create a Helm package and push to Jfrog Artifactory

![Screenshot 7](/images/helmpackagepush.png)

After successful push to Artifactory use Helm install to launch application using Kubernetes

![Screenshot 8](/images/helmapplicationlaunch.png)

Access Mediawiki application

![Screenshot 8](/images/helmproof.png)

Jenkins setup on local machine :

![Screenshot 8](/images/jenkinssetup.png)

Jenkins console output has been attached In the repo:

Jenkins config :

![Screenshot 9](/images/Jenkin_settings.png)

Post Jenkins build cluster output :

![Screenshot 10](/images/Jenkinsbuildclusterout.png)


Post Jenkins build cluster deployment applicaiton output :

![Screenshot 11](/images/appoutput.png)

Install the package with in container :

![Screenshot 12](/images/Installpackcontainer.png)


## Contributing

If you'd like to contribute to the project, provide guidelines for how others can do so.

## License

Specify the license under which your project is distributed. For example:

This project is licensed under the [MIT License](LICENSE).

#   V e n k a t _ A s s i g n m e n t 
 
 
