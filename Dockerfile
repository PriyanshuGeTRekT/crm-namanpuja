# Atomic CRM (Vite) — dev container for `docker compose`.
# Talks directly to the live cloud Supabase. Runs on :5174 (5173 is the admin panel).
FROM node:20-alpine

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 5174

CMD ["npm", "run", "dev", "--", "--host", "--port", "5174"]
