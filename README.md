# 🥘 Xepa App

See DEVELOPER_GUIDE.md for setup and commands.

📌 Publicação do Xepa — Guia Completo
1. Pré-requisitos

Conta de desenvolvedor Google Play Console (US$ 25 única).

Conta de desenvolvedor Apple Developer Program (US$ 99/ano).

Expo CLI e EAS instalados:

npm install -g eas-cli


Projeto já configurado com eas.json (já incluímos no projeto).

2. Gerando binários de produção

No diretório frontend rode:

# Login no expo
eas login --token $EXPO_TOKEN

# Android (AAB para Play Store)
eas build --platform android --profile production

# iOS (IPA para App Store)
eas build --platform ios --profile production


👉 Os arquivos finais serão disponibilizados no dashboard do Expo EAS
.

Android → .aab

iOS → .ipa

3. Publicação na Google Play Store
Passo 1 — Acessar Google Play Console

https://play.google.com/console

Passo 2 — Criar app

Clique em Criar app

Nome: Xepa

Idioma padrão: Português (Brasil)

Tipo: App

Categoria: Comida & Bebida

Passo 3 — Configurações iniciais

Política de privacidade (adicione o link que você definir).

Configurar classificação de conteúdo (responder questionário).

Definir se o app tem anúncios (não obrigatório, informe corretamente).

Passo 4 — Upload do binário

Vá em Produção > Criar nova versão

Faça upload do .aab gerado pelo Expo EAS

Passo 5 — Descrição e Assets

No Play Store Listing adicione:

Título: Xepa

Descrição curta: "Encontre promoções de até 80% em bares e restaurantes perto de você."

Descrição completa: detalhar o funcionamento (já preparamos texto).

Ícone (512x512px)

Screenshots (mockups já no projeto)

Imagem destacada (1024x500px)

Passo 6 — Revisão e envio

Preencher política de conteúdo

Definir faixa etária (maiores de 13 anos)

Revisar e Enviar para revisão

⏳ Aprovação pode levar 24h a 7 dias.

4. Publicação na Apple App Store
Passo 1 — Acessar App Store Connect

https://appstoreconnect.apple.com

Passo 2 — Criar app

Nome: Xepa

Plataforma: iOS

Idioma: Português (Brasil)

Bundle ID: mesmo definido no Expo (ex: com.seuusuario.xepa)

Passo 3 — Upload via Transporter (Mac)

Instale o Transporter no Mac App Store.

Arraste o arquivo .ipa gerado pelo EAS.

Envie para o App Store Connect.

Passo 4 — Configurações no App Store Connect

Ícone do app

Screenshots (mockups do projeto)

Descrição curta e completa

Categoria: Food & Drink

Política de privacidade (URL obrigatória)

Passo 5 — Revisão

Preencher formulários de conformidade (ex: criptografia)

Submeter para análise

⏳ Aprovação pode levar 2–14 dias.

5. Checklist rápido de publicação ✅

 Gerar .aab (Android) e .ipa (iOS)

 Subir no Play Console (Android)

 Subir no App Store Connect (iOS)

 Preencher descrições + screenshots

 Informar política de privacidade

 Enviar para revisão
