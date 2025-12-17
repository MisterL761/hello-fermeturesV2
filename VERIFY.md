# ✅ Vérification de l'installation

Après avoir fait `git pull`, vérifiez que ces fichiers ont le bon contenu :

## 1. tsconfig.json (3 lignes seulement)
```json
{
  "extends": "astro/tsconfigs/strict"
}
```

## 2. package.json (21 lignes)
Le fichier doit commencer par :
```json
{
  "name": "hello-fermetures",
  "type": "module",
  "version": "1.0.0",
```

## 3. Fichiers qui NE doivent PAS exister
- ❌ `src/components/Welcome.astro`
- ❌ `src/assets/`

## 4. Fichiers qui DOIVENT exister
- ✅ `src/components/Header.astro`
- ✅ `src/components/Footer.astro`
- ✅ `src/layouts/Layout.astro`
- ✅ `src/pages/index.astro`
- ✅ `src/styles/global.css`

## 5. Structure du projet
```
hello-fermeturesV2/
├── src/
│   ├── components/
│   │   ├── Header.astro
│   │   └── Footer.astro
│   ├── layouts/
│   │   └── Layout.astro
│   ├── pages/
│   │   └── index.astro
│   ├── styles/
│   │   └── global.css
│   └── env.d.ts
├── public/
├── package.json
├── tsconfig.json
├── astro.config.mjs
└── tailwind.config.mjs
```

## Commandes de vérification

```bash
# Vérifier tsconfig.json
cat tsconfig.json

# Vérifier que Welcome.astro n'existe pas
ls src/components/

# Vérifier le build
npm run build
```

Si tout est correct, vous devriez pouvoir lancer `npm run dev` sans erreur !
