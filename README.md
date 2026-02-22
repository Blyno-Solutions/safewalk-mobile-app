# 🛡️ SafeWalk Mobile App

SafeWalk is a personal safety mobile application built using Flutter, Firebase, and Google Maps.

Its purpose is to help users feel safer while traveling by enabling:

- Real-time location sharing
- Emergency SOS alerts
- Trusted contact notifications
- Safe route assistance
- Live tracking for selected guardians

SafeWalk is being built with production-grade engineering standards and is intended for real-world deployment.

---

# 🎯 Vision

To provide a reliable and privacy-conscious safety companion that users can depend on during vulnerable moments.

This is not a demo project.  
This application is designed to be launch-ready.

---

# 🧱 Tech Stack

Frontend:

- Flutter
- BLoC (State Management)
- Clean Architecture

Backend:

- Firebase Authentication
- Cloud Firestore
- Firebase Cloud Messaging (FCM)
- Cloud Functions (planned)

Maps & Location:

- Google Maps SDK
- Geolocator
- Geocoding

DevOps:

- GitHub CI (coverage enforcement, security scanning)
- Merge Queue
- Branch Protection
- CodeQL Security Analysis

---

# 📦 Project Structure

```

lib/
├── core/
├── features/
└── main.dart

```

Each feature follows Clean Architecture:

```

feature_name/
├── data/
├── domain/
└── presentation/

```

---

# 🚀 Getting Started

## 1. Clone Repository

```bash
git clone https://github.com/Blyno-Solutions/safewalk-mobile-app.git
cd safewalk-mobile-app
```

## 2. Install Dependencies

```bash
flutter pub get
```

## 3. Configure Firebase

- Create Firebase project
- Enable:
  - Authentication
  - Firestore
  - Cloud Messaging

- Add:
  - google-services.json (Android)
  - GoogleService-Info.plist (iOS)

## 4. Run App

```bash
flutter run
```

---

# 🧩 Code Generation with Mason

This project uses **Mason** to generate Clean Architecture features quickly and consistently.

## Install Mason CLI

```bash
dart pub global activate mason_cli
```

## Generate a New Feature

```bash
mason make clean_feature --name feature_name
```

Example:

```bash
mason make clean_feature --name live_tracking
```

This will generate:

```
lib/features/live_tracking/
├── data/
│   ├── datasources/
│   │   └── live_tracking_remote_datasource.dart
│   ├── models/
│   │   └── live_tracking_model.dart
│   └── repositories/
│       └── live_tracking_repository_impl.dart
├── domain/
│   ├── entities/
│   │   └── live_tracking.dart
│   ├── repositories/
│   │   └── live_tracking_repository.dart
│   └── usecases/
│       └── get_live_tracking.dart
└── presentation/
    ├── bloc/
    │   ├── live_tracking_bloc.dart
    │   ├── live_tracking_event.dart
    │   └── live_tracking_state.dart
    └── pages/
        └── live_tracking_page.dart
```

## What Gets Generated

- **Entity**: Immutable domain model with Equatable
- **Repository Interface**: Abstract contract for data operations
- **UseCase**: Business logic implementation
- **Model**: Data transfer object with JSON serialization
- **DataSource**: Remote data fetching (Firebase/API ready)
- **Repository Implementation**: Connects datasource to domain
- **BLoC**: State management with events and states
- **Page**: UI scaffold with BlocBuilder

---

# 🔐 Security Philosophy

SafeWalk handles sensitive user data, including:

- Live location
- Trusted contacts
- Emergency triggers

We follow:

- Strict architectural boundaries
- No secrets committed to repository
- Firebase security rules enforcement
- CI-based static analysis and security scanning
- Server-side validation for sensitive operations

---

# 🧪 Quality Standards

- Minimum 80% test coverage
- No direct commits to main
- Mandatory mentor approval
- Merge queue validation
- Strict lint and formatting rules

---

# 📌 Roadmap

Phase 1:

- Authentication
- Trusted contacts
- Live location sharing
- SOS alerts

Phase 2:

- Safe route risk scoring
- Real-time guardian tracking dashboard
- Cloud Function automation
- Background tracking optimization

Phase 3:

- Public beta
- App Store deployment
- Monitoring & analytics integration

---

# ⚠️ Disclaimer

SafeWalk is designed to assist users during potentially unsafe situations.
It does not replace emergency services.

Users should always contact local authorities in critical situations.
