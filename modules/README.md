# Modules

Każdy moduł funkcjonalny to Nuxt Module (`defineNuxtModule`) eksponujący trzy interfejsy:

- **UI** — komponenty Vue i strony
- **API** — REST endpoints (Nuxt H3)
- **MCP tools** — rejestrowane przez `registerMcpTool()` z `~~/server/utils/mcp`

## Dodanie modułu

1. Utwórz `modules/<nazwa>/index.ts` eksportujący `defineNuxtModule(...)`.
2. Zarejestruj w `nuxt.config.ts` w `modules: []`.
3. Zaimplementuj UI + API + MCP tools zgodnie ze wzorcem triple interface.

Premium moduły są w osobnych repo, publikowane jako `@openexpert/<nazwa>` na npm.
