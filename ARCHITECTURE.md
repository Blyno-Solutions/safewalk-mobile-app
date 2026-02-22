# 🏗️ SafeWalk System Architecture

SafeWalk follows Clean Architecture to ensure:

- Long-term maintainability
- Testability
- Clear separation of concerns
- Production scalability

# 📚 Layer Overview

## 1. Presentation Layer

Location:

```

features/<feature>/presentation/

```

Contains:

- Pages
- Widgets
- BLoC
- Events
- States

Responsibilities:

- UI rendering
- State coordination
- Calling domain usecases

Must NOT:

- Call Firebase directly
- Contain business logic

---

## 2. Domain Layer

Location:

```

features/<feature>/domain/

```

Contains:

- Entities
- Repository interfaces
- Usecases

Responsibilities:

- Business logic
- Application rules
- Validation

Rules:

- Pure Dart
- No Flutter imports
- Fully testable

---

## 3. Data Layer

Location:

```

features/<feature>/data/

```

Contains:

- Repository implementations
- Models
- Datasources (Firebase, local, APIs)

Responsibilities:

- Communicating with Firebase
- Mapping Models ↔ Entities
- Handling external integrations

---

# 🔄 Dependency Rule

Allowed flow:

```

Presentation → Domain → Data

```

Reverse dependency is forbidden.

---

# 🔐 Firebase Architecture

## Authentication

- Firebase Auth handles identity
- User UID is primary reference key

## Firestore Structure (Proposed)

```

users/{userId}
trusted_contacts/{contactId}
active_sessions/{sessionId}
sos_events/{eventId}

```

## Security Rules

- Users can only access their own documents
- Trusted contacts validated server-side
- Location updates restricted by session validation

---

# 🗺️ Location & Maps

Google Maps responsibilities:

- Display routes
- Show real-time user marker
- Render guardian view

Location updates:

- Streamed via Firestore
- Throttled for battery efficiency
- Validated in background services

---

# 📈 Scalability Considerations

- Use Cloud Functions for critical logic
- Avoid heavy client-side trust
- Implement rate limiting for SOS triggers
- Background location optimized for battery
- Prepare for horizontal scaling of Firestore

---

# 🧠 Why This Matters

SafeWalk handles real-time safety features.

Architecture must support:

- High reliability
- Minimal downtime
- Data integrity
- Abuse prevention
- Privacy compliance

This is not a demo app.

This is a safety system.
