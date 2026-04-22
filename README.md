# OpenExpert

Modułowa platforma open source dla ekspertów — projektowana pod agentic economy.

Każdy moduł eksponuje trzy interfejsy: **UI** (dla ludzi), **REST API** (dla developerów), **MCP tools** (dla agentów AI).

## Stack

- Nuxt 4 + TypeScript
- Supabase (PostgreSQL + Auth + RLS)
- Vercel
- AGPL-3.0

## Development

```bash
pnpm install
cp .env.example .env   # uzupełnij klucze Supabase
pnpm dev
```

Aplikacja startuje na http://localhost:3000.

## Deployment (Vercel)

1. Push repo do `OpenExpertApp/app`.
2. Import w Vercelu — podłącz GitHub repo.
3. Ustaw zmienne środowiskowe w Vercel project settings:
   - `SUPABASE_URL`
   - `SUPABASE_KEY`
4. Deploy.

## License

AGPL-3.0 — zobacz [LICENSE](LICENSE).
