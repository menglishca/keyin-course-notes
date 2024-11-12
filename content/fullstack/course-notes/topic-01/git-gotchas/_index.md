---
Title: 5. Git Gotchas
---

It's no secret that git is an incredibly powerful tool, but it also comes with some potential gotchas if you're not careful.

### 1. Git (Rarely) Asks for Confirmation
  - Git will (try to) do whatever you ask it to do, no questions asked
  - Be careful when running git commands, especially if you're running commands you found online that you're not 100% sure about

### 2. `git reset --hard` Drops All Your Current Changes
- Running `git reset --hard` will discard all uncommitted changes in your project
- This command cannot be undone, so ensure you really, really want to get rid of all changes before running it.

### 3. `git push --force`
- **What It Does**
  - `git push --force` overrides the remote branch with your local branch
  - It basically tells the remote, ignore your history, use mine
- **When Might You Need It?**
  - Sometimes, after rewriting commit history with commands like `git rebase` or `git commit --amend`, you may need to use `git push --force` to update the remote repository with your new history
  - This is common in more complex workflows where you need to clean up or reorganize commits before pushing them.
- **Why It Can Be Bad**
  - **Loss of History**: Any commits present on the remote that are not present on your local branch when you force push will be lost
  - **Collaboration Issues**: Your teammates might not be aware that you just removed a bunch of commits, so when they attempt to push their changes git is going to tell them there's a conflict
  - **Best Practices**: Use force-push only when absolutely necessary and when you are sure it won’t negatively affect others. Consider using `git push --force-with-lease` as a safer alternative, which only force-pushes if no new commits have been added to the remote branch since your last fetch.

### 4. Unstaged Files Won't Be Included in Commits
- Files that are not staged will not be included in commits
- To ensure all your files are committed, check the status with `git status` and stage any new files with `git add`.

### 5. Merge Conflicts Need Manual Resolution
- When merging branches, conflicts may arise if changes in the branches overlap.
- Git will indicate the conflicting files, but resolving conflicts requires manual editing, and then manually telling git the conflicts have been resolved

### 6. Commits Cannot Be Easily "Undone"
- Once a commit is made, it is part of the history, and while it can be reverted or amended, it cannot be completely undone.
- You can "revert" a commit, which means to make a new commit that undoes all the changes made in a specific previous commit
- To revert a commit, use:
  ```bash
  git revert <commit-hash>
  ```
- To modify the last commit (e.g., to fix a typo in the commit message), use:
  ```bash
  git commit --amend
  ```

