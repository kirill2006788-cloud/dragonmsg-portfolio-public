# Architecture Overview (Public)

## Components

```text
[Web Client (React/TS)]
       |   REST + WebSocket
       v
[API Gateway / Express Backend]
       |\
       | \-- Socket.io event bus
       |
       +---- Auth / User / Chat / Message modules
       |
       +---- Store abstraction
                 |-- In-memory store (MVP)
                 \-- PostgreSQL store (production path)
```

## API Surface (high-level)

- `POST /api/auth/request-code`
- `POST /api/auth/verify`
- `GET /api/me`
- `PATCH /api/me`
- `GET /api/users/search`
- `GET /api/chats`
- `POST /api/chats`
- `GET /api/chats/:id/messages`
- `POST /api/chats/:id/messages`

Socket auth: token-based handshake.

## Realtime Event Flow

1. Client sends message via REST.
2. Backend persists through storage abstraction.
3. Backend emits socket event to chat participants.
4. Receivers update UI immediately.

## Security Notes (public-safe)

- Auth token is required for private endpoints.
- Sensitive env values are not included in public package.
- Full production config is private.

## Deploy Path

- Containerized backend + static web build
- Nginx reverse-proxy
- VPS scripts and docs for reproducible rollout
