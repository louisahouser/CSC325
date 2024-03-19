## Source Code Version Control Tools

### Introduction

Though sometimes referred to as source control, version control is a mechanism to keep revision history that is easy to revert or reference back to. It is a tool, and a strong one at that, providing developers with the chance to keep anything and everything in version control for reliable retrieval later.

Through using version control, many advantages are presented:

1. Previously released versions can be deployed into an environment to find a defect.
2. In the case of an application catastrophe, a successful, previously released version can be deployed to production again until the disaster has been managed.
3. Previous versions of an application can be viewed to ensure newer versions have improved or changed.
4. Notification to developers of any inadvertent change to the application.
5. Continuous integration becomes finitely more accessible and well, less scary.
6. Deployment and configuration processes can be compeletly automated and stored in version control
7. Changes made can be deployed to any and all environments seamlessly.
8. Due to all 7 advantages above, collaboration becomes easier and more reliable. Rather than wonder who made what change, version control has the history labeled with time and collaborator.

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

The repository is directly integrated with the DevContainer through the use of VS Code. By using this application, changes can be committed to the repository directly through the Source Control tab on the far left panel. Furthemore, the repository is also directly integrated to the CI/CD pipeline through the use of 

-fsdfasdfasdfjasdflkjsadfljadlkfjawef0f090984539458324852-349058

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



### Challenges and Solutions

Changes should be made in the version control system, and then implemented to the production system through the automated pipeline. 

Changes should be committed frequently, and branching should be left avoided.

### Conclusion

cum