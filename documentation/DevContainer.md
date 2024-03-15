## DevContainer Environment

### Introduction

#### Containers:
A container is a manner of running applications quickly, regardless of environment. This is done through an image, which is a static file containing the executable code that becomes a container at runtime. In the case of DevContainers, the image utilizes Docker, making it a Docker container image. Because of this, the image will become a container when run through Docker Engine, a standardized packaging format. By utilizing a Docker container image, the static file includes not only code but libraries, dependencies, settings, tools, and runtime.

>**To learn more about containers, Docker, and both of their abilities, visit the links below:**
>
>[Docker - What is a container](https://docker.com/resources/what-container/)
>
>[Docker Engine](https://docker.com/products/container-runtime/)
>
>[Google Cloud - What are Containers?](https://cloud.google.com/learn/what-are-containers)

#### DevContainers:

A DevContainer is a Docker container configured to provide a fully functional and complete development environment, within VS Code. Whereas developers might encounter different experiences running an application, a DevContainer standardizes the environment to be the same for every user, regardless of device, settings, updates, etc., making it great for team collaboration. In this case, it is especially beneficial because the applications are developed using Flutter. By using a DevContainer, the docker image will create a container with all the necessary tools as well as install the Flutter SDK.

*Note*: It is posssible to create a Dev Container without using a Docker image container, however, it is not commonly done because of the personalization Docker images provide developers.

>**To learn more about DevContainers and their abilities, visit the links below:**
>
>[GitHub Docs - About dev containers](https://docs.github.com/en/codespaces/setting-up-your-project-for-codespaces/adding-a-dev-container-configuration/introduction-to-dev-containers)
>
>[Development Containers](https://containers.dev)
>
>[VSCode - Create a Dev Container](https://code.visualstudio.com/docs/devcontainers/create-dev-container)

### Configuration
To configure the DevContainer, the following steps were taken:
1. Ensure Docker Desktop is downloaded on the device.
2. Ensure Docker Engine is downloaded on the device, and the engine is actively running, not paused. 
3. Ensure VSCode is downloaded and open the application using a designated folder for the project. 
3. Within VSCode, click on the Remote Window Manager button in the bottom left corner. Search or select the option labeled 'Add Dev Container Configuration Files...'
4. Next is the process of persononalizing the Dev Container. 

    1. Two options are available for creating the container configuration. For this DevContainer, choose to 'Add configuration to workspace'. This allows for source control, providing a stable environment with updated versions and collaboration with others. 
    2. Then, the container configuration template must be chosen. The choice is yours, however, Ubuntu is a great choice, as well as the template for this specific Dev Container. 
    3. Next, the template version must be chosen (if applicable). For Ubuntu there are two options, jammy or focal. For this Dev Container, the default option is chosen, which is jammy.
    4. One of the amazing features of using DevContainers is the ability to select specific features to be installed, preventing the developer or user from having to manually do so. For this step, the only feature chosen is the Flutter SDK, which can be found by using the search bar. By selecting this installation feature, the Flutter SDK will be installed automatically.
    5. If a feature has been chosen, configuration options will be displayed next. However, for this Dev Container, remain with feature defaults. 

5. Now, devcontainer.json file should have been created, with the following features included:

    * "name": "Ubuntu"

        * Remember when the template was chosen? The template, in this case Ubuntu, is now the name by default, however, it can be changed.

    * "image": "mcr.microsoft.com/devcontainers/base:jammy"

        * The text following '"image":' might look slightly different, but it does not matter.

    *  "features":
    
        * If any features were selected to install, such as the Flutter SDK, they will be listed within this code block.

6. Click on the remote window manager in the bottom left corner and select 'Rebuild Container' if available. If not, then select 'Reopen in Container', or a button similar. This opens the files in the container.

    *NOTE* : After any changes have been made to the devcontainer.json file, the container will need to be rebuilt by clicking 'Rebuild Container' in the remote window manager.
7. For this Dev Container, a Docker container image will be utilized. Follow the steps below:

    1. Go to the section in the .json file labeled image:

        "image": "mcr.microsoft.com/devcontainers/base:jammy"

        Copy the second piece of text, contained in quotation marks as such:

            mcr.microsoft.com/devcontainers/base:jammy

    2. Replace the section with the following:

            "dockerFile": "Dockerfile"

        *Note*: Ensure this line is followed with a comma, if it is not already. Each command except the last in the .json file must be followed by a comma.

    3. When hovered over, the "Dockerfile" should provide a link to create a new Dockerfile. Click and allow for the new file to be created.

    > Tools and Extensions Installed: 
    > 
    > After the Dockerfile has been created, a pop-up by VSCode should appear asking for permission to install the 'Docker' extension. Select allow. If it does not appear, go to the extensions tab of VSCode and manually install it.

    4. Once inside of the new Dockerfile, type 'FROM' into the file followed by a space. Then copy the image copied from the .json file earlier as seen below:

            FROM mcr.microsoft.com/devcontainers/base:jammy
    
    
    > **By doing this, the base image will now be a Docker image for a Flutter Environment.**


8. Rebuild the container as done above before.

9. Next, type the following postCreateCommand into the .json file into the appropriate section in the file, as shown below:

        	// Use 'postCreateCommand' to run commands after the container is created.
        	"postCreateCommand": "sudo chown -R vscode /flutter/.pub-cache/"

10. Rebuild the container. 

The DevContainer should now be fully configured and ready to use and create applications. 
### Integration with VSCode

The Dev Container integrates with Visual Studio Code easily because of its ability to use the Docker extension to create a Docker container image. This provides easy use of a Docker container and all of its tools, while at the same time, the ease of the VSCode user interface. 

Furthermore, a great advantage of using VSCode is the ability to link GitHub to the folder, allowing for seamless source control. 

### Usage

#### Starting the Container

1. Open the Docker Engine and ensure the engine is running and not paused.
2. Open VSCode and click on the remote window manager in the bottom left corner and select 'Rebuild Container' if available. If not, then select 'Reopen in Container', or a button similar. 

#### Editing Code in the .json file

Any changes to the code in the .json file require the container to be rebuilt.

If any errors occur, the first step before diving into debugging should be ensuring there is a comma after each command except the last.

#### App Development

1. Open the terminal window by pressing "ctrl `" on the keyboard.
2. In the terminal, type 'flutter create appname', with 'appname' replaced with whatever application name desired. 
3. To run the app: 

    cd into the application by typing: 

            cd appname
    
    then type:

            flutter run -d web-server

4. After the terminal states the application is running and it is possible to make hot restart changes, go to the ports tab.

    The container should have three ports open and running, with one of them being Flutter FAQ, one of them being 404, and another being the app itself. 
    
    The Flutter FAQ is typically port 9100, however, for the other two, open one to figure out which is which. 

> By default, the DevContainer will create the Flutter demo app, however, the code can be modified by clicking on the file named 'main.dart' within the 'lib' library in the app folder.
>
> To make any changes to the code within the main.dart file while the application is running, type 'r' and refresh the tab of the web-app to see the changes implemented.

5. To exit the application, exit the web app and return to the terminal to type 'q'.

#### Source Control

To use the source control feature, use the Source Control tab on the left of VSCode.

This can also be done through the terminal through the following commands:

        git add file1
        git commit -m 'added file3'
        git push

*Note*: The commit command includes a helpful command to describe what is being added to the repository.

### Challenges and Solutions

- Needing to change the 'main.dart' file of the application but want to be proactive for errors? Type the following command into the terminal:

        dart fix --dry-run

    This command will show changes the computer suggests be made, however, will not implement them

- Want to apply the changes suggested by the command above? Type the following command into the terminal:

        dart fix --apply

    This command will apply any changes the computer suggests should be made to the file.

- Having issues with Flutter or need a comprehensive diagnostic of Flutter? Type the following command into the terminal:

        flutter doctor

- Need to ensure flutter is up to date? Type the following command into the terminal:

        flutter pub upgrade

### Conclusion

By using a DevContainer, developers are able to simply focus on their code, without any hassle of environment standarization. This means increased project productivity and efficiency, as well as easy source control through VSCode. 