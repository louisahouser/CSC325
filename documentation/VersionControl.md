## Source Code Version Control Tools

### Introduction

Though sometimes referred to as source control, version control is a mechanism to keep revision history that is easy to revert or reference back to. It is a tool, and a strong one at that, providing developers with the chance to keep anything and everything in version control for reliable retrieval later.

Through using version control, many advantages are presented:

* Previously released versions can be deployed into an environment to find a defect.
* In the case of an application catastrophe, a successful, previously released version can be deployed to production again until the disaster has been managed.
* Previous versions of an application can be viewed to ensure newer versions have improved or changed.
* Notification to developers of any inadvertent change to the application.
* Continuous integration becomes finitely more accessible and well, less scary.
* Deployment and configuration processes can be compeletly automated and stored in version control
* Changes made can be deployed to any and all environments seamlessly.
* Due to all 7 advantages above, collaboration becomes easier and more reliable. Rather than wonder who made what change, version control has the history labeled with time and collaborator.

Overall, version control provides an incredible sense of control over the configuration and deployment process. 

### Version Control System Used

The version control system chosen for this project is Git. This system was primarily chosen over others due to its easy integration with VS Code, and its open-source software. Moreover, Git outranks its competitors in popularity and common use. Git has been used in classes on campus before, so prior knowledge seemed more beneficial than learning a new control system altogether.

For more information about version control systems:

> [GitHub Docs - About Git](https://docs.github.com/en/get-started/using-git/about-git)
>
>[GitLab - What is Git Version Control](https://about.gitlab.com/topics/version-control/what-is-git-version-control/)
>
>[Perforce - Other Types of Version Control](https://www.perforce.com/blog/vcs/what-is-version-control#:~:text=Here%20is%20a%20summary%20of%20some%20of%20the,tool%20used%20for%20version%20control.%20...%20More%20items)

### Repository Setup

#### General Structure

The repository has five main folders, a README.md, and a .gitignore file. The first folder contains the devcontainer.json as well as the Dockerfile. The second folder is .github, which contains the dependabot.yml file. The third is labeled documentation and contains two markdown files; one describing Dev Containers and the other Version Control (this one). The fourth and fifth files both contain Flutter applications, one being the Flutter Demo app and the other a random number generator.  

#### Integration

The repository is directly integrated with the DevContainer through the use of VS Code. By using this application, changes can be committed to the repository directly through the Source Control tab on the far left panel. Furthemore, the repository is also directly integrated to the CI/CD pipeline through any change in code triggering an initiation of the automated pipeline to store and manage version history.

> CI/CD: Continuous Integration and Continuous Delivery/Deployment
>
> To learn more, click [here](https://www.redhat.com/en/topics/devops/what-is-ci-cd)! 

#### Adopted Conventions

Adopted conventions include:

- Commit messages follow a similar structure 
    > "added a version control markdown file"
    >
    > "updated naming conventions"

    By starting each message with "added" or "updated", it sets the message up to be more descriptive and helpful to the user.

- Naming conventions follow as below:
    > firstDemoApp
    
    Each file or folder will typically have the first word all lowercase, with each word following having its first initial capitalized, and no spaces between words. 

- Very Frequent Version Updates
    
    Though generally just considered good practice anyways, frequent commits to repository are in practice. This is especially important when switching tasks, taking time to go look at another window, or any other shift in attention. 


### Common Commands and Usage

Common commands include:
    
    Command Line Commits:
    ---------------------
    git add file1                   // selects file to be added to repository
    
    git commit -m "added file1"     // commits file with a meaningful message
    
    git push                        // pushes and syncs file to repository


    Command Line Repository Cloning:
    --------------------------------
    git clone https://github.com/louisahouser/CSC325.git    


    Command Line Retrieval of Commit ID:
    ------------------------------------
    git log --oneline               // displays all commits and their IDs


    Command Line Reset Command:
    ---------------------------
    git reset IDnumber              // returns to a previous commit

    git reset IDnumber --hard       // undo commit and any changes made after 


    Command Line Revert Command:
    ----------------------------
    git revert IDnumber             // undo current commit and revert to previous commit

    Command Line Branch Merging Command:
    ------------------------------------
    git status                      // displays nstatus of current branch

    git checkout master             // switches to the specified branch being merged with

    git merge branchOne             // merge branch with the branch currently "inside"



> *NOTE:* 
>
> - The revert command differs from the reset in that it does not remove previous commit logs, rather it creates a new one.
> 
> - git reset will undo changes up to the state *OF* the given commit ID
>
> - git revert will undo changes up to the state *BEFORE* the given commit ID


> *NOTE:*
>
> After the merge command is run, the branch, in this case branchOne, still exists but its changes have now been implemented into the current or main branch.

### Collaboration Features

#### Push, Pull and Fork 
To understand the power of Git and its collaborative features, it is important to understand three of its biggest commands.

> Forking a Repository:
> -
> When a repository is forked, a copy is created. This means the ability to alter code without changing the original.
>> How To:
>> -
>> - Go to GitHub repo and click the "Fork" button in the top right corner.
>> - Select the owner of the fork, as well as a name.
>> - Give the repository a description if so desired.
>> - Choose which branches will be copied
>> - Click the "Create Fork" buttin
> 
> *Note:* The fork of a repository can also be cloned.

> Pushing Changes:
> -
> This has been discussed plenty already, but the git push command takes changes in code and pushes them back to the repository. 

> Pull Request:
> - 
> A pull request is a way to suggest specific changes be made to the main source code. This is often done using a fork of a repository. 
>> How To:
>> -
>> - In the repo, click the "Pull requests" tab.
>> - Click "Contribute", and then "Open a pull request"
>> - Differences between the fork and the parent repo will be shown. To continue with the request, click "Create pull request"
>> - Give a title and description for the changes.
>> - Click "Create pull request"

**For more information regarding these three commands, click [here](https://towardsdev.com/pull-push-and-fork-a-beginners-guide-to-git-and-github-3d31ee5b32)!**

Now those commands are more familiar, its important to understand their power. Not only that but the power version control gives a team. By giving developers the ability to see changes in code, not only with time stamps but with ID, it is easy to see what has been done and who to talk to if there is confusion or mistake. Version control provides collaborators the ability to keep their code secure and out of harms way by creating forks and being able to revert or reset to previous commits. Moreover, rather than having to deliberate on the idea of changes to code with worry of impacting the current state, developers can simply create a fork, create a pull request, and see for themselves if changes would be worthy of merging.

### Challenges and Solutions

One of the biggest challenges of version control is simply familiarizing oneself with the commands, navigation and structure. Luckily, there is *plenty* of documentation online to help, including the [Git website](https://git-scm.com/).

Another challenge is getting used to frequent commits. This is a much smaller challenge, however, it can be easy to forget. On a related note, it is important to mention that changes should be made in the version control system, and then implemented to the production system through the automated pipeline. For both of these topics, the best solution is simply practice and it will become second nature.

Speaking from experience, using a IDE such as VS Code makes using Git ten times easier. Not only does it have a tab for source control, but the DevContainer can be configured through source control, and cloning into repositories is offered to the user upon first opening the application.

### Conclusion

Git is a great beginner version control system because there is so much documentation online, and it is a system that one can stick with even after more experience. It is easy to download on the [Git](https://git-scm.com/) website, and it is open source. Not only is it well integrated into VS Code, but it allows for easier automation. 

