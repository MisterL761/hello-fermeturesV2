# Hello Fermetures - Site Web Astro

Site web pour Hello Fermetures, spécialiste en menuiserie RGE au Plessis-Belleville (60) et Seine-et-Marne (77).

## 🚀 Structure du projet

```
/
├── public/
├── src/
│   ├── components/
│   │   ├── Header.astro
│   │   └── Footer.astro
│   ├── layouts/
│   │   └── Layout.astro
│   ├── pages/
│   │   └── index.astro
│   └── styles/
│       └── global.css
├── astro.config.mjs
├── package.json
├── tailwind.config.mjs
└── tsconfig.json
```

## 🧞 Commandes

Toutes les commandes sont exécutées depuis la racine du projet, depuis un terminal :

| Commande                   | Action                                           |
| :------------------------- | :----------------------------------------------- |
| `npm install`              | Installe les dépendances                         |
| `npm run dev`              | Démarre le serveur de développement local sur `localhost:4321` |
| `npm run build`            | Build le site de production dans `./dist/`      |
| `npm run preview`          | Prévisualise votre build localement avant de déployer |

## 🎨 Technologies utilisées

- **Astro** - Framework web moderne
- **Tailwind CSS** - Framework CSS utility-first
- **TypeScript** - Typage statique

## 📦 Fonctionnalités

- ✅ Design 100% identique à l'original
- ✅ Composants modulaires (Header, Footer, Layout)
- ✅ Tailwind CSS configuré avec les couleurs personnalisées
- ✅ Animations et interactions JavaScript préservées
- ✅ Responsive design
- ✅ SEO optimisé

## 🏗️ Déploiement

Le site peut être déployé sur :
- Vercel
- Netlify
- GitHub Pages
- Tout autre hébergeur supportant les sites statiques

```bash
npm run build
```

Le dossier `dist/` contient tous les fichiers statiques prêts pour le déploiement.
# Astro Starter Kit: Basics

```sh
npm create astro@latest -- --template basics
```

> 🧑‍🚀 **Seasoned astronaut?** Delete this file. Have fun!

## 🚀 Project Structure

Inside of your Astro project, you'll see the following folders and files:

```text
/
├── public/
│   └── favicon.svg
├── src
│   ├── assets
│   │   └── astro.svg
│   ├── components
│   │   └── Welcome.astro
│   ├── layouts
│   │   └── Layout.astro
│   └── pages
│       └── index.astro
└── package.json
```

To learn more about the folder structure of an Astro project, refer to [our guide on project structure](https://docs.astro.build/en/basics/project-structure/).

## 🧞 Commands

All commands are run from the root of the project, from a terminal:

| Command                   | Action                                           |
| :------------------------ | :----------------------------------------------- |
| `npm install`             | Installs dependencies                            |
| `npm run dev`             | Starts local dev server at `localhost:4321`      |
| `npm run build`           | Build your production site to `./dist/`          |
| `npm run preview`         | Preview your build locally, before deploying     |
| `npm run astro ...`       | Run CLI commands like `astro add`, `astro check` |
| `npm run astro -- --help` | Get help using the Astro CLI                     |

## 👀 Want to learn more?

Feel free to check [our documentation](https://docs.astro.build) or jump into our [Discord server](https://astro.build/chat).
