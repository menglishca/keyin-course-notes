# Keyin Course Notes

This repository houses the source for my Keyin Course Notes website built using [Hugo](https://gohugo.io/). All course content is stored in markdown files for quick editing.

## Courses

- **Fullstack JavaScript Development with Node.js**
  - Course materials cover topics including:
    - Git workflows and best practices
    - Fullstack JavaScript principles
    - Node.js back-end development
    - Databases and CRUD operations

- **Introductory Databases for Software Developers**
  - This course focuses on practical applications of databases, with a strong emphasis on:
    - CRUD operations
    - SQL fundamentals
    - Database design and management

## Site Structure

- All course notes are stored in `content/` in Markdown format, organized by week and topic.
- Static assets (images, CSS, etc.) are located in the `static/` folder.
- Custom Hugo configurations can be found in the `config.toml` file.

## Theme

The site uses the **[Hextra](https://github.com/imfing/hextra)** theme. To make your own site check out the Hextra repo to get started. Or check our their [demo site](https://imfing.github.io/hextra-starter-template/) for more information

## Local Development

To serve the site locally and view the course notes in your browser, use the following command:

```bash
hugo server -D
```

The site will be live at http://localhost:1313/.

## Deployment

The site can be easily deployed to platforms like Netlify or GitHub Pages. Ensure the public folder is built using:

```bash
hugo
```

This will generate the static files for the site.

## Contribution

Feel free to fork this repository and open a PR if you'd like to contribute or suggest improvements to the course notes.
