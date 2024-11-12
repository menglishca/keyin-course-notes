---
title: 6. GitHub
---

## What is GitHub?

- GitHub is a web-based platform for version control and collaboration
- It provides a UI for your git repository, providing you not only with a place to host it, but also a way to easily view files, see commits, etc.
  - GitHub is not git

## Common GitHub Tasks

1. **Forking a Repository**
   - Forking a repository creates a personal copy of someone else's repository under your GitHub account.
   - It's commonly used when you want to work off of another project, but don't want to disrupt the original repository
     - As an example, you might fork a getting started repo and use that to start your own projects
   - **Steps**:
     - Navigate to the repository you want to fork.
     - Click the “Fork” button at the top right corner of the page.
     - GitHub creates a copy of the repository in your account, where you can make changes.

2. **Cloning a Repository**
   - Cloning a repository is a git command, to copy a remote git repository to your local machine.
   - GitHub makes it super easy to clone any of their repos
   - Cloning is necessary for working on the code locally when it is originally stored on a remote server, like GitHub
   - **Steps**:
     - Navigate to the repository on GitHub.
     - Click the “Code” button and copy the repository URL.
     - Run the following command in your terminal:
       ```bash
       git clone https://github.com/username/repository.git
       ```

3. **Making a Pull Request**
   - A pull request (PR) is a request to merge changes from one branch into another
     - Aka, a request to _pull_ the changes made on one branch into another. The name comes from the `git pull` command frequently used to accomplish this
   - Useful for submitting contributions, code reviews, or requesting feedback before merging changes.
   - Pull requests allow for code review, by providing a place for people to comment on changes as well as explicitly add their approval
   - **Steps**:
     - Push your changes to a branch on GitHub (e.g., from a fork or a feature branch).
     - Navigate to the repository where you want to submit the pull request.
     - Click the “Pull Requests” tab and then click “New Pull Request.”
     - Select your branch and the branch you want to merge into.
     - Add a title and description for your pull request and click “Create Pull Request.”