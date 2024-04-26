## **Project Report**:  Building a CI/CD Pipeline for a Flutter Application

### Introduction

Continuous Integration and Continuous Deployment/Delivery (CI/CD) pipelines serve companies the ability to fully automate the build, test, and deployment phases with not only increased efficiency, but security as well. If a release is deployed and found defective in some way, the delivery team is able to safely revert to a previous version in order to preserve stability for users and the development team, until they are ready to redeploy the release. This feature is primarily through the implementation of version control, a pivotal aspect of the pipeline. Every commit made to the application triggers tests and other runs to be performed automatically, providing feedback at each step regardless of pass or fail as can be seen in figure 1. Furthermore, this provides ability for developers to work in teams with reliable work logs as well as the ability for work to be done simultaneously without affecting stable versions. The goal of building such a pipeline is to have the entire process automated, however, it provides the flexibility to slowly build up to it. This means not only is it great for companies but it is also beneficial for those wanting to ease deployment for individual projects.  

### DevContainer Environment

The DevContainer was created to prevent the common issue of, "Well it works on my computer." By using this, the application runs regardless of environment, completely standardizing it for every user. For this project, Docker, an open-platform was used, which runs packages inside containers. Visual Studio Code is the IDE used, where the .devcontainer, which uses Ubuntu, and DockerFile were built on, which, through using provides complete customability. Not only are all of the tools and dependencies installed for the developer, but certain features such as the Flutter SDK were able to be selected to be installed as well, cutting down manual labor and time. 

### Source Code Version Control Tools

As discussed before, Version Control is crucial for a successful CI/CD pipeline. The version control system utilized was Git. This system was primarily chosen over others due to its easy integration with VS Code, and its open-source software. Moreover, Git outranks its competitors in popularity and common use. Git has been used in classes on campus before, so prior knowledge seemed more beneficial than learning a new control system altogether. 

Using GitHub, the repository has five main folders, a README.md, and a .gitignore file. The first folder contains the devcontainer.json as well as the Dockerfile. The second folder is .github, which contains the dependabot.yml file. The third is labeled documentation and contains two markdown files; one describing Dev Containers and the other Version Control (this one). The fourth and fifth files both contain Flutter applications, one being the Flutter Demo app and the other a random number generator.

The repository is directly integrated with the DevContainer through the use of VS Code. By using this application, changes can be committed to the repository directly through the Source Control tab on the far left panel. Furthemore, the repository is also directly integrated to the CI/CD pipeline through any change in code triggering an initiation of the automated pipeline to store and manage version history.

### CI/CD Pipeline Environment

The pipeline environment consists of Ubuntu, Docker, Network Configurations, Git and GitHub. Below are in depth descriptions of each.

#### Ubuntu DevContainer:

The DevContainer this project uses runs on Visual Studio Code using the Ubuntu operating system. It is a containerized development environment already configured with the appropriate dependencies, tools, SDKs, and other configurations necessary to successfully develop and run Flutter applications.

#### Docker:

Docker is utilized in this project to containerize the development environment to provide consistency across devices, preventing the "well it works on my device" dilemma. By using a Docker Image, this allows the Ubuntu DevContainer to run smoothly without providing any issues related to the environment.

#### Git and GitHub :

Git is used in this project as version control system. Through the use of Git, the project can be integrated frequently and reliably. Using this system provides tracking for any changes made to code.

GitHub is the version control platform used for this project that hosts Git repositories, as well as providing many useful features including issue tracking, easy collaboration with developers, and pull requests.

#### Network Configurations:

CI/CD Network Configurations
Internet Access: The CI/CD pipeline requires internet access to interact with external services such as GitHub (for version control), Docker Hub or other container registries (for storing Docker images), and any third-party dependencies or libraries needed during the build, test, and deployment processes.

#### DevContainer Network Configurations:

Devcontainer Communication: The devcontainer running Ubuntu within Docker needs network connectivity to communicate with other services, including the CI/CD pipeline components, such as the CI server (e.g., GitHub Actions runner) and any external services or APIs required by the pipeline. Inter-Container Communication: If the CI/CD pipeline utilizes multiple containers (e.g., for running tests in isolated environments), Docker provides networking capabilities to facilitate communication between these containers. Docker's default bridge network allows containers to communicate with each other within the same host.

##### GitHub Network Configurations
Outbound Traffic: The devcontainer must be able to initiate outbound connections to GitHub over HTTPS or SSH protocols to clone/pull the code repository, push changes, and interact with GitHub APIs for features like creating pull requests or commenting on issues.

### CI/CD Tools

In order to fully automate the build and deploy processes, GitHub Actions was used. This was chosen because of its native integration with GitHub, YAML-based configuration, extensive marketplace of actions, and event-driven triggers. Furthermore, GitHub Actions has a plethora of forums and documentation online, as well as GitHub Docs which is documentation for GitHub by GitHub. While GitHub has many benefits, it does become limiting when creating a more complex project. More configuration will likely need to be done, which could mean needing to purchase a subscription with GitHub.

### Deployment Environment

The deployment environment is GitHub Pages. By using this environment, static websites are able to be deployed directly from GitHub repositories. This choice was made because of the ease of using peaceiris, as well as the fact that it is has easy integration with GitHub. A key aspect of this deployment environment is the use of the .gitignore file, allowing environment variables to be kept local during development and production.

### Flutter Web Application

For the Flutter web application, two different apps were created. The first was the Flutter demonstration app, and the second was a random 8-digit number generator. Dart, the language utilized by Flutter, is easy to understand and adjust, however, it does take some time to adjust and understand what is being done if there is no prior application building experience. When creating a workflow in GitHub actions, it is created specific to the application. For this project, the automation process was only applied to the Demo app. Any commits to the YAML file resulted in a trigger of building, testing, and ultimately deploying.

### Conclusion

This project was very beneficial as it provided the ability to learn Git, practice continuous integration, create DevContainers, get exposure to Docker, and learn the fundamentals of automation. The pipeline could still be improved by finding the issue that causes the GitHub Pages to fully render, but leaves the link unrendered.