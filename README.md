# PujaKaro Flutter App

A Flutter application built with Clean Architecture, following SOLID principles.

## Architecture

This project follows **Clean Architecture** with clear separation of concerns:

- **Domain Layer**: Business logic, entities, repository interfaces, and use cases
- **Data Layer**: Data sources, models, and repository implementations
- **Presentation Layer**: UI components, BLoC for state management

## Tech Stack

- **Flutter**: UI framework
- **Firebase**: Backend services (Auth, Firestore)
- **BLoC**: State management
- **go_router**: Declarative routing with deep linking support
- **GetIt**: Dependency injection
- **Freezed**: Immutable data classes with code generation
- **json_serializable**: JSON serialization
- **Dartz**: Functional programming (Either type for error handling)
- **Dio**: HTTP client

## Project Structure

```
lib/
├── core/                    # Core functionality
│   ├── constants/          # App-wide constants
│   ├── error/              # Error handling (Failures, Exceptions)
│   ├── network/            # Network client setup
│   ├── utils/              # Utility functions
│   ├── di/                 # Dependency injection
│   ├── firebase/           # Firebase service abstractions
│   └── routing/            # Routing configuration
│       ├── app_router.dart # GoRouter setup with auth guards
│       └── app_routes.dart # Route path constants
├── features/               # Feature modules
│   ├── auth/               # Authentication feature
│   │   ├── data/          # Data layer
│   │   │   ├── datasources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   ├── domain/        # Domain layer
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   └── presentation/   # Presentation layer
│   │       ├── bloc/
│   │       └── pages/
│   └── home/               # Home feature
│       └── presentation/
│           └── pages/
└── main.dart              # App entry point
```

## SOLID Principles Implementation

1. **Single Responsibility**: Each class has one reason to change
   - Use cases handle single business operations
   - BLoC manages state for specific features
   - Data sources handle data operations

2. **Open/Closed**: Open for extension, closed for modification
   - Repository interfaces allow different implementations
   - Use dependency injection for flexibility

3. **Liskov Substitution**: Repository implementations follow interfaces
   - `AuthRepositoryImpl` implements `AuthRepository`

4. **Interface Segregation**: Small, focused interfaces
   - Separate interfaces for different data sources
   - Focused repository contracts

5. **Dependency Inversion**: Depend on abstractions
   - Domain layer depends on repository interfaces
   - Dependencies injected via GetIt

## Setup Instructions

### 1. Install Dependencies

```bash
flutter pub get
```

### 2. Generate Code

Run code generation for Freezed and JSON serialization:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

For continuous generation during development:

```bash
flutter pub run build_runner watch --delete-conflicting-outputs
```

### 3. Firebase Configuration

1. Install FlutterFire CLI:
```bash
dart pub global activate flutterfire_cli
```

2. Configure Firebase:
```bash
flutterfire configure
```

This will generate the `firebase_options.dart` file with your Firebase project configuration.

### 4. Run the App

```bash
flutter run
```

## Adding New Features

1. Create feature folder structure:
   ```
   lib/features/[feature_name]/
   ├── data/
   ├── domain/
   └── presentation/
   ```

2. Define domain entities (using Freezed)
3. Create repository interface in domain layer
4. Implement repository in data layer
5. Create use cases in domain layer
6. Implement data sources
7. Create BLoC for state management
8. Build UI pages
9. Register dependencies in `injection_container.dart`

## Code Generation

This project uses code generation for:
- **Freezed**: Immutable classes, unions, and pattern matching
- **json_serializable**: JSON serialization/deserialization
- **injectable**: Dependency injection setup

Always run `build_runner` after:
- Adding new Freezed classes
- Modifying JSON serializable models
- Adding new injectable dependencies

## Testing

The project structure supports easy testing:
- Unit tests for use cases
- Repository tests with mock data sources
- BLoC tests for state management
- Widget tests for UI components

## Routing

This project uses **go_router** for declarative routing with authentication-based route guards.

### Route Structure

- `/` or `/login` - Login page (unauthenticated users)
- `/home` - Home/Dashboard page (authenticated users)

### Route Constants

All route paths are centralized in `lib/core/routing/app_routes.dart`:

```dart
AppRoutes.login  // '/login'
AppRoutes.home   // '/home'
```

### Navigation Examples

**Navigate to a route:**
```dart
// Using context extension
context.go(AppRoutes.home);

// Using GoRouter directly
GoRouter.of(context).go(AppRoutes.home);
```

**Push a new route (adds to navigation stack):**
```dart
context.push(AppRoutes.home);
```

**Pop current route:**
```dart
context.pop();
```

### Authentication Guards

The router automatically handles authentication-based redirects:

- **Unauthenticated users** trying to access protected routes (like `/home`) are redirected to `/login`
- **Authenticated users** trying to access `/login` are redirected to `/home`

The redirect logic is implemented in `lib/core/routing/app_router.dart` and uses the `AuthBloc` state to determine authentication status.

### Router Refresh

The router automatically refreshes when authentication state changes via `BlocListener` in `app.dart`. This ensures redirects happen immediately when users sign in or sign out.

### Adding New Routes

1. Add route path constant to `app_routes.dart`:
   ```dart
   static const String newRoute = '/new-route';
   ```

2. Add route definition to `app_router.dart`:
   ```dart
   GoRoute(
     path: AppRoutes.newRoute,
     name: 'newRoute',
     builder: (context, state) => const NewPage(),
   ),
   ```

3. Use the route in navigation:
   ```dart
   context.go(AppRoutes.newRoute);
   ```

## Notes

- All models use Freezed for immutability
- Error handling uses Either type from Dartz
- Dependency injection is configured in `lib/core/di/injection_container.dart`
- Firebase services are abstracted for testability
- Routing uses go_router with authentication-based guards
