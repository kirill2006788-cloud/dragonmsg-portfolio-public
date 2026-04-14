# Public Portfolio Publish Checklist

## 1) Never publish

- `.env`, `.env.*` with real values
- DB dumps, backups, logs with private data
- server keys, API tokens, SSH keys
- full backend internals if you want IP protection

## 2) Publish instead

- `README.md` (strong product pitch)
- `CASE_STUDY.md`
- `ARCHITECTURE.md`
- `SAFE_SNIPPETS.md`
- screenshots or short demo video

## 3) Suggested public repo structure

```text
dragonmsg-portfolio/
  README.md
  CASE_STUDY.md
  ARCHITECTURE.md
  SAFE_SNIPPETS.md
  media/
    ui-1.png
    ui-2.png
    demo-30s.mp4
```

## 4) CV-ready bullets

- Built Telegram-style messaging platform with realtime event delivery.
- Designed backend API modules for auth, chat lifecycle, and message flow.
- Implemented WebSocket push model and deployment-ready infrastructure docs.
- Structured storage layer for MVP speed and production migration path.

## 5) What to say in interviews

- Why REST + Socket split was chosen
- How you’d scale realtime delivery
- How you’d move from memory store to Postgres safely
- Trade-offs made to ship MVP fast without architecture debt
