---
title: 1. Introduction to NPM
---

## What is NPM?
- **NPM or (Node Package Manager)** is the default package manager included in Node.js
    - It helps developers manage their project dependencies
    - It helps facilitate common actions in a project, via scripts
- NPM is not the only package manager of it's kind
  - Python has `pip`, which also allows you to manage dependencies in a Python project
  - Ruby has `RubyGems`, php has `Composer`, the list goes on
  - Even Node.js has other package manegers like `yarn` if you don't like `npm`

## How do packages work?
- A **package** is a collection of code (in our case Javascript modules) that provide specifc functionality
  - A package typically includes it's source code and a `package.json` file, which has all the metadata about the package (like it's name, version, author and dependencies)
- Packages can be used for just about anything, and if you browse the npm repository long enough you'll likely find a package for everything

## When do we use packages?
- Packages aren't necessary, really ever
  - However, sometimes it's convenient to use the code written by someone else to avoid having to rewrite it yourself all over again
  - As an example, you can do all your UI work with Vanilla Javscript but using a framework like React can make the process much easier to manage
  - **You want to try and strike a balance between not wasting time re-inventing the wheel and not writing code yourself**
- The thing is, is that each package takes up space
    - The more packages you include, the bigger your code gets which can cause issues with load times (if you're working with front-end javascript)
    - As well, each package potential introduces more problems that you can't fix as you don't have the _easy_ ability to modify a package's code
- Packages are great as a way to reuse solutions for complicated problems
- You can also break up a project into packages to make the project easier to maintain


## Using packages in your project
- To install a package, you need to know what time of package it is:
  - A **regular dependency** can be installed with `npm install <package_name>` and this tells `npm` that this package is required for the project to run
  - A **dev dependency** can be installed with `npm install --save-dev <package_name>` and this tells `npm` that this package is only required during development and not required for production releases of the package
  - This distinction really only matters if you're publishing a package to the `npm` repository, and won't be an important distinction for this course
- Once you add a packge, you'll notice that it gets added to the `dependencies` object in your `package.json` file
    - Each package your project requires will be listed here, along with the version your project requires, that way you can ensure users always download the right versions of your dependencies when they try to run your project
- You'll also notice that a new file has been created (unless you had other packages installed previously) called `package-lock.json`
    - The `package-lock.json` file maps out the specific versions of the entire dependency tree of your project
- Finally, installing the packages will also create a `node_modules` folder
  - This folder contains the actual code for your entire dependency tree (which is why it can be large at times)

## Managing packages with git
- The `node_modules` folder should **never** be in your git repository
  - You can manually exclude it, or add it to a `.gitignore` file
  - The `.gitignore` specifies a list of files and/or folders which git shouldn't attempt to track
- The `package.json` and `packaage-lock.json` should **always** be in your git repository
  - With the `package.json` and `package-lock.json` file, new users of your project can reinstall it with `npm install` and create their own versions of the `node_modules` folder, thus avoiding the need to include it in the repo itself
- Having the `package-lock.json` file ensures that everyone working on the project is using the same package versions

## Helpful NPM Commands
`npm install`: Installs all dependencies listed in `package.json`.
`npm update`: Updates project dependencies to their latest versions.
`npm uninstall <package-name>`: Removes a package from the project.
`npm init`: Initializes a new package.json file for the project.

