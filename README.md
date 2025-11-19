# WorldSkills UK Competition Templates

Pre-configured framework templates for offline competition environments.

## Templates

- **react** - React with Vite
- **vuejs** - Vue.js with Vite
- **svelte** - SvelteKit with static adapter
- **angular** - Angular CLI
- **nextjs** - Next.js
- **vanillajs** - Vanilla JavaScript
- **expressjs** - Express.js backend
- **laravel** - Laravel with MySQL auto-configuration

## Features

All templates include:
- Dockerfile for containerized deployment
- GitHub Actions workflow for CI/CD
- Verdaccio npm registry configuration (Node.js templates)
- Production-ready nginx configuration (frontend templates)
- Auto-deployment to Gitea with Docker registry

## Laravel Template

Includes MySQL auto-configuration:
- Auto-migrations on container start
- Dynamic database credentials via build args
- Database naming: `{username}_module_{letter}`

## Usage

Clone individual template:
```bash
git clone https://github.com/worldskillsuk/templates.git
cd templates/react
```

Import to Gitea (via setup script):
```bash
./import_framework.sh
```
