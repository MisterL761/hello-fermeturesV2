#!/bin/bash
# Script de nettoyage et installation propre pour Hello Fermetures

echo "🧹 Nettoyage complet du projet..."

# Supprimer les fichiers de build et dépendances
rm -rf node_modules package-lock.json .astro dist

echo "✅ Nettoyage terminé"
echo ""
echo "📥 Récupération de la dernière version depuis GitHub..."

# Reset hard pour forcer la synchronisation
git fetch origin
git reset --hard origin/claude/migrate-to-astro-01UiGR7uPDihfPcPqNtKyL6b

echo "✅ Synchronisation terminée"
echo ""
echo "📦 Installation des dépendances..."

# Installer les dépendances
npm install

echo ""
echo "✅ Installation terminée !"
echo ""
echo "🚀 Pour lancer le projet :"
echo "   npm run dev"
echo ""
echo "📋 Pour vérifier l'installation :"
echo "   Consultez le fichier VERIFY.md"
