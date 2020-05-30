# 💡 How to extend your SFDX Docker Image with plugins
A lot of modern development and DevOps tools make use of Docker because of its benefits.

Some Salesforce related usecases could be:
- Your team makes use of [Remote Development Containers](https://forcedotcom.github.io/salesforcedx-vscode/articles/user-guide/remote-development)
- You are using CICD tools like GitLab, GitHub, Bitbucket...
- You want to automate your Job 🤔


Sometimes the official base image / out of the box CLI might not be enough for your usecase. **This repository shows how to easily extend your existing SFDX docker image with [SFDX plugins](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_plugins.meta/sfdx_cli_plugins/cli_plugins.htm)**


## Building the image
There are different situations to build the image:
- manual / local machine
- automated in modern CICD platforms
- scheduled
- ...

### Local use
```sh-session
$ git clone https://github.com/pnestvogel/sfdx-docker
$ cd sfdx-docker
$ docker build --pull -t "mysfdximage" .
$ docker build --pull -t "mysfdximage" .
Sending build context to Docker daemon  53.25kB
Step 1/2 : Pull official image
Step 2/2 : Install plugin
Finish
``` 

To run the image interactive: `docker run -it mysfdximage`


In addition you could also push the image into a registry (docker hub or something private) using: `docker push "$CI_REGISTRY_IMAGE/$IMAGE_NAME:$TAG_NAME"` to make it available for other users or your team
