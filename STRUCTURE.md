# 📁 Structure du Projet Hello Fermetures

## 🎯 Vue d'ensemble

Ce document explique l'organisation du projet et comment utiliser les composants et styles.

## 📂 Structure des dossiers

```
src/
├── components/
│   ├── Header.astro              # En-tête du site
│   ├── Footer.astro              # Pied de page
│   ├── hero/
│   │   └── HeroVideo.astro       # Section hero avec vidéo YouTube
│   ├── product/
│   │   ├── ProductCard.astro     # Carte produit individuelle
│   │   └── ProductGrid.astro     # Grille de produits
│   └── catalogue/
│       └── CatalogueSection.astro # Section catalogue PDF
├── layouts/
│   └── Layout.astro              # Layout principal du site
├── pages/
│   ├── index.astro               # Page d'accueil
│   ├── grille-de-defense.astro   # Pages produits
│   └── ...                       # Autres pages
└── styles/
    ├── global.css                # Styles globaux et imports
    ├── variables.css             # Variables CSS (couleurs, espacements, etc.)
    ├── animations.css            # Animations réutilisables
    ├── hero.css                  # Styles pour les sections hero
    ├── products.css              # Styles pour les sections produits
    └── catalogue.css             # Styles pour les sections catalogue
```

## 🎨 Fichiers CSS

### `variables.css`
Contient toutes les variables CSS du projet :
- **Couleurs** : `--color-gold`, `--color-black`, `--color-text-primary`, etc.
- **Gradients** : `--gradient-gold`, `--gradient-dark`, etc.
- **Espacements** : `--spacing-sm`, `--spacing-md`, `--spacing-lg`, etc.
- **Border radius** : `--radius-sm`, `--radius-md`, `--radius-lg`
- **Shadows** : `--shadow-sm`, `--shadow-md`, `--shadow-lg`
- **Transitions** : `--transition-fast`, `--transition-normal`

**Classes utilitaires disponibles :**
- `.container` : Conteneur avec max-width
- `.text-gradient` : Texte avec gradient doré
- `.glass-card` : Carte avec effet glassmorphism

### `animations.css`
Animations réutilisables :
- `fadeInUp` : Apparition en montant
- `fadeInDown` : Apparition en descendant
- `fadeIn` : Simple apparition
- `slideInLeft` / `slideInRight` : Glissement latéral
- `pulseFloat` : Flottement avec pulsation

**Classes utilitaires :**
- `.animate-fadeInUp`, `.animate-fadeInDown`, `.animate-fadeIn`
- `.delay-1` à `.delay-10` : Délais d'animation

### `hero.css`
Styles pour les sections hero avec vidéo :
- Hauteur minimale 80vh
- Overlay sombre avec gradient
- Conteneur vidéo avec glassmorphism
- Responsive (mobile-first)

### `products.css`
Styles pour les grilles et cartes produits :
- Grilles responsive avec `auto-fit`
- 3 variantes de cartes : `default`, `compact`, `horizontal`
- Effets hover avec élévation
- Délais d'animation en cascade
- Boutons vidéo stylisés

### `catalogue.css`
Styles pour les sections catalogue :
- Image centrée
- Effet hover avec scale
- Responsive (100% sur mobile)

## 🧩 Composants

### HeroVideo

Section hero avec vidéo YouTube intégrée.

**Props :**
```typescript
{
    title: string;              // Titre de la section
    videoUrl: string;           // URL embed YouTube
    description: string;        // Description du partenaire
    backgroundImage?: string;   // Image de fond (optionnel)
}
```

**Exemple d'utilisation :**
```astro
---
import HeroVideo from '../components/hero/HeroVideo.astro';
---

<HeroVideo
    title="Découvrez nos partenaires"
    videoUrl="https://www.youtube.com/embed/VIDEO_ID"
    description="Description du fabricant..."
    backgroundImage="/images/bg-grille-defense.jpg"
/>
```

### ProductCard

Carte produit individuelle avec image, titre, description et fonctionnalités.

**Props :**
```typescript
{
    title: string;              // Nom du produit
    image: string;              // URL de l'image
    description?: string;       // Description courte
    features?: string[];        // Liste des caractéristiques
    videoUrl?: string;          // Lien vidéo optionnel
    variant?: 'default' | 'compact' | 'horizontal'; // Style de la carte
}
```

**Variantes :**
- `default` : Carte standard (300px de hauteur d'image)
- `compact` : Carte compacte pour grilles denses (260px, texte centré)
- `horizontal` : Carte horizontale pour produit unique (image à gauche)

**Exemple d'utilisation :**
```astro
---
import ProductCard from '../components/product/ProductCard.astro';
---

<ProductCard
    title="Grille Antique"
    image="/images/Grille_Antique.jpg"
    description="Traverses carré plein de 14..."
    variant="compact"
/>

<!-- Avec liste de fonctionnalités -->
<ProductCard
    title="Portail Battant"
    image="/images/portail-battant.jpg"
    features={[
        'Esthétique classique',
        'Facile à motoriser',
        'Coût abordable'
    ]}
/>
```

### ProductGrid

Conteneur pour une grille de produits avec titre et sous-titre.

**Props :**
```typescript
{
    title: string;              // Titre de la section
    subtitle?: string;          // Sous-titre optionnel
    variant?: 'default' | 'compact'; // Type de grille
}
```

**Variantes :**
- `default` : Colonnes de 350px minimum
- `compact` : Colonnes de 280px minimum (plus de cartes par ligne)

**Exemple d'utilisation :**
```astro
---
import ProductGrid from '../components/product/ProductGrid.astro';
import ProductCard from '../components/product/ProductCard.astro';
---

<ProductGrid
    title="Découvrez notre gamme"
    subtitle="Protection et esthétique"
    variant="compact"
>
    <ProductCard title="Produit 1" image="/images/product1.jpg" variant="compact" />
    <ProductCard title="Produit 2" image="/images/product2.jpg" variant="compact" />
    <!-- Plus de produits... -->
</ProductGrid>
```

### CatalogueSection

Section affichant le catalogue PDF téléchargeable.

**Props :**
```typescript
{
    title: string;              // Titre de la section
    catalogueUrl: string;       // Lien vers le PDF
    catalogueImage: string;     // Image de couverture
    altText?: string;           // Texte alternatif
}
```

**Exemple d'utilisation :**
```astro
---
import CatalogueSection from '../components/public/catalogues/CatalogueSection.astro';
---

<CatalogueSection
    title="Découvrez notre catalogue"
    catalogueUrl="/public/catalogues/lahfer-grilles.pdf"
    catalogueImage="/images/catalogue-lahfer.png"
    altText="Catalogue LAHFER"
/>
```

## 📝 Exemple de page complète

Voici comment créer une page produit complète avec la nouvelle structure :

```astro
---
import Layout from '../layouts/Layout.astro';
import HeroVideo from '../components/hero/HeroVideo.astro';
import ProductGrid from '../components/product/ProductGrid.astro';
import ProductCard from '../components/product/ProductCard.astro';
import CatalogueSection from '../components/public/catalogues/CatalogueSection.astro';
---

<Layout title="Ma Page Produit">
    <main>
        <!-- Hero Section -->
        <HeroVideo
            title="Découvrez nos partenaires"
            videoUrl="https://www.youtube.com/embed/VIDEO_ID"
            description="Description du partenaire fabricant..."
            backgroundImage="/images/bg-page.jpg"
        />

        <!-- Products Section -->
        <ProductGrid
            title="Notre gamme de produits"
            subtitle="Qualité et design"
            variant="default"
        >
            <ProductCard
                title="Produit 1"
                image="/images/product1.jpg"
                features={[
                    'Caractéristique 1',
                    'Caractéristique 2',
                    'Caractéristique 3'
                ]}
            />
            <ProductCard
                title="Produit 2"
                image="/images/product2.jpg"
                description="Description du produit"
                videoUrl="https://youtube.com/watch?v=..."
            />
            <!-- Plus de produits... -->
        </ProductGrid>

        <!-- Catalogue Section -->
        <CatalogueSection
            title="Téléchargez notre catalogue"
            catalogueUrl="/public/catalogues/catalogue.pdf"
            catalogueImage="/images/catalogue.png"
        />
    </main>
</Layout>
```

## 🎯 Bonnes pratiques

### Utilisation des variables CSS
```css
/* ✅ BON */
.ma-classe {
    color: var(--color-text-primary);
    padding: var(--spacing-md);
    border-radius: var(--radius-lg);
}

/* ❌ MAUVAIS */
.ma-classe {
    color: #ffffff;
    padding: 40px;
    border-radius: 20px;
}
```

### Utilisation des animations
```astro
<!-- ✅ BON : Utiliser les classes utilitaires -->
<div class="animate-fadeInUp delay-2">
    Contenu qui apparaît
</div>

<!-- ✅ BON : Utiliser l'animation directement -->
<div style="animation: fadeInUp 0.8s ease-out both;">
    Contenu qui apparaît
</div>
```

### Composition de composants
```astro
<!-- ✅ BON : Utiliser ProductGrid + ProductCard -->
<ProductGrid title="Nos produits">
    <ProductCard title="Produit 1" image="/images/1.jpg" />
    <ProductCard title="Produit 2" image="/images/2.jpg" />
</ProductGrid>

<!-- ❌ MAUVAIS : Recréer toute la structure -->
<section class="products-section">
    <h2>Nos produits</h2>
    <div class="products-grid">
        <!-- Duplication de code... -->
    </div>
</section>
```

## 🔄 Migration des pages existantes

Pour migrer une page existante vers la nouvelle structure :

1. **Identifier les sections** : Hero, Produits, Catalogue
2. **Remplacer par les composants** : HeroVideo, ProductGrid, ProductCard, CatalogueSection
3. **Supprimer les styles en double** : Les styles sont maintenant dans les fichiers CSS séparés
4. **Utiliser les variables CSS** : Remplacer les valeurs en dur par des variables

Exemple de refactoring dans les prochains commits !

## 🚀 Avantages de cette structure

✅ **Réutilisabilité** : Les composants peuvent être utilisés sur toutes les pages
✅ **Maintenabilité** : Un changement dans un composant s'applique partout
✅ **Cohérence** : Design uniforme sur tout le site
✅ **Performance** : Moins de duplication de code
✅ **Lisibilité** : Code plus clair et organisé
✅ **Évolutivité** : Facile d'ajouter de nouvelles fonctionnalités

## 📞 Questions ?

Pour toute question sur la structure, consulte ce document ou regarde les exemples dans les pages existantes.
