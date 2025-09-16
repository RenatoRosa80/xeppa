#!/bin/bash

# ==========================
#  Xepa - Setup Automático
# ==========================
chmod +x setup.sh

# Verifica se URL foi passada
if [ -z "$1" ]; then
  echo "❌ ERRO: informe a URL do repositório GitHub"
  echo "👉 Exemplo: ./setup.sh https://github.com/seu-usuario/xepa.git"
  exit 1
fi

REPO_URL=$1

echo "🚀 Iniciando setup do projeto Xepa..."

# Inicializar git
git init

# Adicionar todos os arquivos
git add .

# Primeiro commit
git commit -m "🚀 Initial commit - Xepa App"

# Criar branch main
git branch -M main

# Adicionar remoto
git remote add origin "$REPO_URL"

# Push inicial
git push -u origin main

echo "✅ Setup concluído com sucesso!"
echo "📌 Repositório remoto: $REPO_URL"
