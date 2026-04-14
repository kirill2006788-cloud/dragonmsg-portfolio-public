# DragonMsg — Portfolio Edition

Production-style messenger platform inspired by Telegram UX.

## Why this project stands out

I built this as a **full-cycle product**: architecture, backend API, realtime transport, web client, deployment notes, and multi-platform direction.

- Realtime messaging architecture (REST + WebSocket)
- Authentication flow (phone + code)
- Chat domain modeling (users, chats, messages, attachments)
- Clear separation: `backend` / `web` / deployment layer
- Practical ops mindset: deployment docs, environment setup, troubleshooting notes

## Tech Stack

- **Frontend:** React, TypeScript, Vite
- **Backend:** Node.js, Express, Socket.io
- **Mobile direction:** Flutter
- **Data layer:** in-memory + PostgreSQL-ready abstractions
- **Infra:** Docker, Nginx, VPS deployment scripts

## Product Scope

Implemented and documented:

- Auth flow (request code / verify)
- User profile endpoints
- Chat list and chat creation
- Message history and message send
- Realtime message push via Socket.io
- Attachment-ready message model

## Visual Proof (Portfolio)

- Real web screenshots (chat, profile modal, sidebar menu)
- Additional mobile-style mock screens in `media/`
  - `mobile-chat-mock.svg`
  - `mobile-profile-mock.svg`

## What is public in this portfolio version

This repository intentionally contains:

- Architecture and product case-study
- API contract summary
- Deployment strategy and engineering decisions
- Safe, reduced code snippets (non-sensitive)

It intentionally does **not** contain full source code to protect project IP.

## Full demo / deep technical review

For recruiters and hiring teams:

- I can provide private code walkthrough (live)
- I can share a private access package under request
- I can explain architecture trade-offs and scaling plan in detail

---

Contact note for CV:

> Built and shipped a Telegram-style messenger platform (web + backend + realtime transport), including auth, chat domain APIs, socket events, and deployment workflow. Public portfolio includes architecture and case-study; full code available via private review.
