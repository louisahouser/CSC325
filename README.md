# CSC325
Set-Up and Containerized Environment Instructions:

    To set up and use the containerized development environment, ensure Docker Desktop is downloaded on your device. Then run the application and make sure the Docker engine is running. Within the .devcontainer folder are two files - devcontainer.json and Dockerfile. Unless you make changes to the container that will need to do so, you will not need to touch the Dockerfile much. The devcontanier.json is set up already with the flutter sdk installed as a feature. Upon entering vscode, click on the remote window option menu in the far South left corner of the screen, and see if there is a button "Rebuild Container". If not, then you need to click "Reopen in Container", or a button very similar to that. This will then open the files in the container. If you make any changes to the .json file, you will need to rebuild the container by clicking on the remote window option menu and then "Rebuild Continainer". 

    To create apps, open the terminal window by pressing "ctrl `", and then type flutter create <appname>. To run the app, you will need to cd into it, and then run "flutter run -d web-server". After it states the application is running and you can make hot flash changes, go to the ports tab by the terminal window and open one of the ports. The container should have three ports open and running, with one of them being flutter FAQ, one of them being 404 and another being the app itself. The Flutter FAQ is typically port 9100, however, for the other two you will simply need to open one to figure out which is which. To exit the app, you exit the tab and return to the terminal to type 'q'. You may also make changes to the app as you run it, and type 'r' and refresh the tab to see those changes implemented. 

    The devcontainer will create the flutter demo app on default, however, you are able to open the main.cp of the app and program the app you desire instead.

    This containerized development environment is being version controlled through GitHub. To push files into the repository, follow these three commands (NOTE: the example below uses file3 as an EXAMPLE. Replace 'file3' with the filename):

        git add file3
        git commit -m 'added file3'                 // this is a helpful short description of what is being added to the repo
        git push

    Other helpful commands include:
        - dart fix --dry-run /// if you are changing the main.cp of an app, you can run this command to see what changes the computer would suggest
        - dart fix --apply   /// you can run this command to apply the changes suggested by running the previous command
        - flutter doctor     /// having issues with flutter or want a comprehensive diagnostic of flutter on your device? this command finds any issues and reports them back to you.

Project Overview:

    This project serves to provide students the ability to learn how to set up containerized environments utilizing Docker that supports Flutter web development. The main goal includes creating a clean, easy to use environment, as well as providing capability to develop apps to show understanding of the environment, flutter, and dart. The project should at least contain the a devcontainer.json, a Dockerfile, an app set up to run the Flutter Demo app, an app that shows understanding dart and flutter, a .gitignore that excludes unnecessary files and folders, and a way to version control the system. 

    For my project, I have used GitHub for version control, and have provided the requirements listed above, with my secondary app being an 8-digit random number generator.1