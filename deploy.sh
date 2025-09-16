#!/bin/bash

# ==========================
#  Xepa - Deploy Automático
# ==========================

echo "🚀 Iniciando processo de deploy..."

# ==========================
#  Deploy do Backend (Render)
# ==========================
echo "📡 Publicando backend no Render..."

if [ -z "$RENDER_API_KEY" ]; then
  echo "❌ ERRO: variável RENDER_API_KEY não definida!"
  echo "👉 Defina antes com: export RENDER_API_KEY=SUACHAVE"
  exit 1
fi

# Exemplo: chamar CLI ou API do Render (ajuste conforme sua config)
curl -X POST "https://api.render.com/v1/services/YOUR_SERVICE_ID/deploys"      -H "Authorization: Bearer $RENDER_API_KEY"      -H "accept: application/json"      -H "content-type: application/json"      -d '{"clearCache": false}'

echo "✅ Backend enviado para Render."

# ==========================
#  Deploy do Frontend (Expo)
# ==========================
echo "📱 Publicando app no Expo..."

if [ -z "$EXPO_TOKEN" ]; then
  echo "❌ ERRO: variável EXPO_TOKEN não definida!"
  echo "👉 Defina antes com: export EXPO_TOKEN=SEUTOKEN"
  exit 1
fi

cd frontend

# Login automático
npx expo login --token $EXPO_TOKEN

# Build para Android
npx expo build:android -t apk

# Build para iOS
npx expo build:ios -t archive

echo "✅ App enviado para Expo (Android + iOS)."

cd ..

echo "🎉 Deploy concluído com sucesso!"
