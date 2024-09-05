---
Title: 3. Git Refresher
---

## 1. What is Git?
- **Git** is both a developer's friend and, at times, enemy. It's distributed version control system that tracks changes in files, it can even be used for things that aren't necessarily code!
- Makes it easier for developers to collaboratively work on the same project
- **Git** works locally (on your computer) but can also connect to remote repositories for collaboration (e.g., **GitHub**)

## 2. Common Git Terminology
- **Repository (Repo)**: A project tracked by Git, either locally or on a remote server.
- **Diff**: A comparison between two versions of a file that shows what has changed.
- **Commit**: A snapshot of a project's files at a certain point in time.
  - Typically, a commit is represented by a **diff**, which highlights only the changes made to a project
- **Branch**: A parallel version of your code where you can develop features independently.
- **Merge**: Combine changes from one branch into another.
- **Pull**: Fetch and integrate changes from a remote repository.
- **Push**: Send your local commits to a remote repository.
- **Staged**: A file or change that is going to be apart of the next commit, when you make it. Changes that are not staged will not be included in a commit

## 3. Simple Git Hygiene
  - Git hygiene refers to maintaining a clean and organized repository. Good git hygiene practices help keep your project's history understandable and manageable, making collaboration smoother and debugging easier.

- **Commit Often, Use Meaningful Messages**
  - **Commit Frequently**: Regular commits ensure your work is saved incrementally, reducing the risk of losing significant progress and making it easier to identify specific changes.
  - **Meaningful Messages**: Write clear and descriptive commit messages that explain the purpose of each change. This helps you and your collaborators understand the history and context of changes.
    - **Do this**: 
      ```bash
      git commit -m "Fix bug in user authentication logic"
      ```
    - **Not this**
    ```bash
    git commit -m "Fixes"
    ```

- **Use Meaningful Branch Names**
  - **Descriptive Branch Names**: Choose branch names that clearly describe the purpose or feature of the branch. This helps in understanding the purpose of each branch at a glance and makes collaboration easier.
    - **Example**: Instead of using generic names like `branch1` or `feature`, use descriptive names like `add-user-authentication` or `fix-login-error`.