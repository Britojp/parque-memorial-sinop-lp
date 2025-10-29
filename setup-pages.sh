#!/bin/bash

# Script para configurar GitHub Pages automaticamente
echo "🔧 Configurando GitHub Pages..."

# Verificar se gh está instalado
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI não encontrado. Instalando..."
    curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
    sudo apt update
    sudo apt install gh -y
fi

# Fazer login no GitHub
echo "🔐 Fazendo login no GitHub..."
gh auth login --web

# Configurar Pages
echo "📄 Configurando GitHub Pages..."
gh api repos/Britojp/parque-memorial-sinop-lp/pages -X POST -f source[branch]=main -f source[path]=/

echo "✅ GitHub Pages configurado!"
echo "🌐 Seu site estará disponível em: https://britojp.github.io/parque-memorial-sinop-lp/"
