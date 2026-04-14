# Safe Code Snippets (Non-sensitive)

> These are reduced examples for portfolio discussion only.

## 1) Auth middleware pattern

```js
export function requireAuth(req, res, next) {
  const token = extractBearer(req.headers.authorization)
  if (!token) return res.status(401).json({ error: 'Unauthorized' })

  const user = verifyToken(token)
  if (!user) return res.status(401).json({ error: 'Invalid token' })

  req.user = user
  next()
}
```

## 2) Realtime emit after message creation

```js
app.post('/api/chats/:id/messages', requireAuth, async (req, res) => {
  const chatId = req.params.id
  const message = await store.createMessage({
    chatId,
    senderId: req.user.id,
    text: req.body.text,
  })

  io.to(`chat:${chatId}`).emit('message', message)
  res.status(201).json(message)
})
```

## 3) Frontend socket subscription pattern

```ts
socket.on('message', (incoming) => {
  chatStore.addMessage(incoming.chatId, incoming)
})

return () => socket.off('message')
```

## 4) Storage abstraction idea

```js
export const store = {
  createMessage,
  getChatMessages,
  listUserChats,
  createChat,
  findUserByPhone,
}
```

This lets the same API layer work with in-memory or PostgreSQL implementations.
