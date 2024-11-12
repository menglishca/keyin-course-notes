---
Title: 4. Typical Git Workflow
---

<details>
<summary>Quick Reference Guide to a Typical Git Workflow</summary>

1. **Initialize a Git Repository**
   ```bash
   git init
   ```

2. **Add Files to the Staging Area**
   - Add all files:
     ```bash
     git add .
     ```
   - Add specific files:
     ```bash
     git add path/to/file
     ```

3. **Commit Changes**
   ```bash
   git commit -m "Your commit message"
   ```

4. **Add a Remote Repository**
   ```bash
   git remote add origin https://github.com/yourusername/your-repo.git
   ```

5. **Push Changes to the Remote**
   ```bash
   git push -u origin main
   ```

6. **Pull Changes from the Remote**
   ```bash
   git pull origin main
   ```

8. **Check Status of Your Working Directory**
   ```bash
   git status
   ```

</details>

## Getting Started
Let's assume we're starting with a very simple "Hello World" project. Our project looks something like this:
```bash
hello-world/: The root directory of the project.
hello-world/hello.py: Contains the Python code for the project.
hello-world/README.md: Provides information about the project.
```

We'll run a quick `git init` (or use the initialize command in VSCode) to tell git we want it to start tracking our project

## Preparing for Our First Commit

Now that Git knows about our project, we want to make sure our changes are saved and tracked. This is done by creating a commit.

### 1. Stage Your Changes
  - Before making a commit, you need to tell Git which changes to include. This is done using the `git add` command, which stages changes for the next commit.

  - **Adding All Changes**: To include all changes (except those explicitly ignored by `.gitignore`), use:
    ```bash
    git add .
    ```

  - **Adding Specific Files**: To stage specific files, use:
    ```bash
    git add path/to/file1 path/to/file2
    ```

  - **Explanation**:
    - `git add .`: Stages all modified and new files in the current directory and its subdirectories.
    - `git add path/to/file`: Stages only the specified file(s).

### 2. Commit Your Changes
  - After staging your changes, you can create a commit with a message describing what was changed. This provides a record of your progress and helps in tracking the history of your project.

  - **Creating a Commit**: Use the `git commit` command with the `-m` flag to add a commit message.
   Example:
   ```bash
   git commit -m "Initial commit

   - Adds the project files
   - Adds a project README"
   ```
  - **Explanation**:
    - `-m`: Allows you to include a commit message directly in the command.
    - `"Initial commit\n\n- Adds the project files\n- Adds a project README"`: The message describing the commit. Using clear and descriptive messages helps in understanding what changes were made.

### 3. Why Commit Messages Matter
  - Writing meaningful commit messages is a good practice, even if it's overkill
  - Makes it easier to understand the history of changes
  - Helps everyone else understand what you were doing when you made a commit


## Pushing Our Changes
Once we've made our commit, we can push our changes to a remote repository (like GitHub) to share them with others or back them up

### 1. Add a Remote Repository
  - To push changes to a remote repository, you first need to add it as a remote in your local Git configuration. A remote repository is an external place where you want to store your code, like github
  - Use the `git remote add` command to link your local repository with a remote repository URL.
   Example:
   ```bash
   git remote add origin https://github.com/yourusername/hello-world.git
   ```
  - **Explanation**:
    - `git remote add`: The command used to add a new remote.
    - `origin`: The name of the remote repository. This is a standard name, but you can choose any name you prefer. `origin` is the default name for the main remote repository.
    - `https://github.com/yourusername/hello-world.git`: The URL of the remote repository. This is the location where your code will be pushed. It can be an HTTPS URL or an SSH URL, depending on your setup.


### 2. Push Your Changes
  After adding the remote, you can push your commits to it using the `git push` command.
  Example:
  ```bash
  git push origin main
  ```

  - **Explanation**:
    - `origin` refers to the name of the remote repository you set up.
    - `main` (or `master`, depending on your default branch name) is the branch you’re pushing to.

## Pulling New Changes
Keeping your local repository synchronized is really important, especially if there's multiple people working on a project at once. To pull down the changes from your remote server, use:

   ```bash
   git pull origin main
   ```

This command fetches and merges changes from the remote `main` branch into your local branch.

