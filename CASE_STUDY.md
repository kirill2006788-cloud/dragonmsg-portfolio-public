# Case Study: Building DragonMsg (Telegram-style Messenger)

## 1) Goal

Build a real product-level messenger foundation with:

- fast onboarding,
- realtime communication,
- clean architecture,
- deployment readiness.

## 2) Problem Framing

Most tutorial chat apps stop at a demo UI. I focused on a **hiring-grade engineering case**:

- API boundaries are explicit
- transport is realtime-ready
- deployment path is documented
- architecture allows replacing storage and scaling incrementally

## 3) Architecture Decisions

### Domain split

- `backend`: auth, users, chats, messages, socket transport
- `web`: UI/UX, state management, API integration
- `deploy`: production notes and scripts

### Realtime model

- REST for command/query boundaries (load chats, send message)
- Socket.io for push events and instant updates

### Storage strategy

- Fast iteration mode: in-memory store
- Production path: PostgreSQL-ready store modules

This approach gave speed in MVP and a predictable migration path.

## 4) Core Features Implemented

- Phone + code sign-in flow
- User profile read/update
- Chat list endpoint and chat creation endpoint
- Message history endpoint
- Message creation endpoint (text and attachment metadata)
- Realtime delivery event (`message`) via socket

## 5) Engineering Trade-offs

- Prioritized product velocity + architecture clarity over premature optimization
- Chose module-level boundaries to keep backend refactor-safe
- Kept deployment docs practical for reproducible handoff

## 6) What I’d do next (scaling roadmap)

- Durable PostgreSQL by default + migrations
- Delivery/read receipts and typing indicators
- Message pagination + indexing strategy
- Media storage layer (S3-compatible)
- Horizontal socket scaling (Redis adapter)
- CI pipeline + integration tests

## 7) Result for portfolio

This project demonstrates:

- product thinking,
- backend + frontend ownership,
- realtime systems understanding,
- ability to ship beyond "pet project" quality.
