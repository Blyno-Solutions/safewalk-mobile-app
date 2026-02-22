# 🤝 Contributing to SafeWalk

SafeWalk is a production-oriented safety application.

We maintain strict engineering standards to ensure reliability and scalability.

---

# 🧭 Branch Naming Convention

All branches must follow:

```
feature/<description>
bugfix/<description>
hotfix/<description>
docs/<description>
chore/<description>

```

Examples:

- feature/live-location-tracking
- bugfix/sos-trigger-crash
- docs/firestore-structure

CI will fail if branch naming is invalid.

---

# 🔄 Pull Request Workflow

1. Create branch from main
2. Implement feature following Clean Architecture
3. Add unit tests
4. Ensure coverage ≥ 80%
5. Run flutter analyze locally
6. Open Pull Request
7. Wait for CI to pass
8. Request mentor review
9. Merge via merge queue

No PR is merged without:

- Passing CI
- Coverage validation
- Security scanning
- Mentor approval

---

# 🧱 Code Guidelines

## Architecture Rules

- No business logic in Widgets
- No Firebase calls in presentation layer
- No UI imports in domain layer
- Repository contracts must live in domain
- Repository implementations must live in data

## State Management

- Use BLoC only
- Do not manage business state inside UI
- Use Equatable for states

## Dependency Injection

- All services must be registered via GetIt
- No manual instantiation inside UI

---

# 🧪 Testing Requirements

- Usecase-level unit tests required
- Repository tests recommended
- No feature without tests
- Coverage must not drop below 80%

---

# 🔐 Security Rules

- Never commit API keys
- Never commit Firebase admin credentials
- Validate all critical operations server-side
- Follow least-privilege access

---

# 🧠 Engineering Mindset

SafeWalk deals with safety-sensitive functionality.

Every line of code must consider:

- Failure scenarios
- Edge cases
- Latency
- Abuse vectors
- Data privacy

We write software as if someone may depend on it in a moment of distress.
