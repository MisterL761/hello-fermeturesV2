# 📸 Organisation des images

## Structure recommandée

```
public/
├── images/
│   ├── logo/
│   │   └── hello-fermetures-logo.png
│   ├── produits/
│   │   ├── fenetres/
│   │   ├── portes/
│   │   ├── volets/
│   │   ├── portails/
│   │   └── pergolas/
│   └── realisations/
│       └── chantiers/
└── videos/
    └── (vidéos si nécessaire)
```

## 🎯 Comment utiliser les images dans le code

### Dans les fichiers .astro

```astro
<!-- Image du logo -->
<img src="/images/logo/hello-fermetures-logo.png" alt="Hello Fermetures">

<!-- Image de produit -->
<img src="/images/produits/fenetres/fenetre-pvc.jpg" alt="Fenêtre PVC">

<!-- Image de réalisation -->
<img src="/images/realisations/chantiers/projet-01.jpg" alt="Chantier">
```

### Points importants

- ✅ Le chemin commence par `/` (depuis la racine du site)
- ✅ Pas besoin d'écrire `public/`, juste `/images/...`
- ✅ Les images sont servies telles quelles (pas d'optimisation automatique)
- ✅ Nommez vos fichiers en minuscules avec des tirets : `fenetre-pvc-blanc.jpg`

## 📝 Exemple de remplacement dans le code actuel

Dans `src/pages/index.astro`, remplacez :
```astro
<!-- Avant -->
<img src="https://via.placeholder.com/300x100?text=HELLO+LOGO" alt="...">

<!-- Après -->
<img src="/images/logo/hello-fermetures-logo.png" alt="...">
```

## 🖼️ Formats d'images recommandés

- **Logo** : PNG avec transparence
- **Photos produits** : JPG ou WebP (optimisées)
- **Icônes** : SVG de préférence
- **Photos chantiers** : JPG (1200px de largeur max)
