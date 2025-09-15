# xeppa
App project for Google and app store



1️⃣ Backend (Node + Express + Prisma + PostgreSQL)

Estrutura de pastas:

backend/
 ├─ prisma/
 │   ├─ schema.prisma
 │   └─ seed.ts
 ├─ src/
 │   ├─ index.ts
 │   ├─ routes/
 │   │   ├─ users.ts
 │   │   ├─ businesses.ts
 │   │   └─ promotions.ts
 ├─ package.json
 └─ .env.example


Funcionalidades iniciais:

Rotas: /users, /businesses, /promotions

Seed de dados fake

Conexão com PostgreSQL via Prisma

2️⃣ Mobile (Expo React Native)

Estrutura de pastas:

mobile/
 ├─ App.tsx
 ├─ package.json
 ├─ navigation/
 │   └─ AppNavigator.tsx
 ├─ screens/
 │   ├─ LoginScreen.tsx
 │   ├─ PromotionsScreen.tsx
 │   └─ PromotionDetailScreen.tsx
 └─ components/
     └─ PromotionCard.tsx


Funcionalidades iniciais:

Login (Google, visitante, telefone)

Listagem de promoções via API backend

Detalhe da promoção com quantidade e horário de retirada

3️⃣ Docker & Docker Compose

backend/Dockerfile

docker-compose.yml para backend + PostgreSQL

.env.example

4️⃣ Makefile

Comandos:

make dev         # rodar backend local
make test        # rodar testes
make build-android
make build-ios
make upload-android
make upload-ios
make clean
make stripe-login
make stripe-listen
make stripe-trigger

5️⃣ GitHub Workflows

.github/workflows/ci.yml → build + testes

.github/workflows/deploy.yml → deploy backend + mobile

.github/workflows/quality.yml → lint + testes PR

.github/workflows/codeql.yml → análise de segurança

.github/dependabot.yml → atualização automática de dependências

6️⃣ Documentação

README.md atualizado com badges e instruções

DEVELOPER_GUIDE.md (guia rápido técnico)
