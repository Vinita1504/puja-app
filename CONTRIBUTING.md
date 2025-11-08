# Contributing to PujaKaro

Thank you for your interest in contributing to PujaKaro! This document outlines the coding standards, architecture patterns, and guidelines that all contributors must follow.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Architecture Principles](#architecture-principles)
- [Code Style & Formatting](#code-style--formatting)
- [File Naming Conventions](#file-naming-conventions)
- [Project Structure](#project-structure)
- [SOLID Principles](#solid-principles)
- [Clean Architecture Layers](#clean-architecture-layers)
- [State Management (BLoC)](#state-management-bloc)
- [Error Handling](#error-handling)
- [Dependency Injection](#dependency-injection)
- [Routing Guidelines](#routing-guidelines)
- [Testing Requirements](#testing-requirements)
- [Code Generation](#code-generation)
- [Documentation Standards](#documentation-standards)
- [Git Workflow](#git-workflow)
- [Code Review Guidelines](#code-review-guidelines)

## Code of Conduct

- Be respectful and inclusive
- Provide constructive feedback
- Follow the project's coding standards
- Write clear, maintainable code
- Document your code appropriately

## Getting Started

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/your-feature-name`
3. Make your changes following the guidelines below
4. Run tests and ensure all checks pass
5. Submit a pull request

## Architecture Principles

This project follows **Clean Architecture** with clear separation of concerns:

- **Domain Layer**: Pure business logic, no dependencies on external frameworks
- **Data Layer**: Data sources, models, and repository implementations
- **Presentation Layer**: UI components and state management

### Dependency Rule

**Dependencies point inward**: Presentation → Domain ← Data

- Domain layer has **NO** dependencies on Data or Presentation layers
- Data layer depends on Domain layer (implements domain interfaces)
- Presentation layer depends on Domain layer (uses use cases and entities)

## Code Style & Formatting

### General Rules

1. **Follow Dart/Flutter style guide**: Use `dart format` to format code
2. **Run analyzer**: Always run `flutter analyze` before committing
3. **Fix all warnings**: Do not commit code with analyzer warnings
4. **Use meaningful names**: Variables, functions, and classes should be self-documenting

### Code Formatting

```bash
# Format all Dart files
dart format .

# Analyze code
flutter analyze
```

### Naming Conventions

- **Files**: Use `snake_case.dart` (e.g., `auth_repository.dart`)
- **Classes**: Use `PascalCase` (e.g., `AuthRepository`)
- **Variables/Functions**: Use `camelCase` (e.g., `getUserData`)
- **Constants**: Use `lowerCamelCase` for final variables, `SCREAMING_SNAKE_CASE` for compile-time constants
- **Private members**: Prefix with `_` (e.g., `_privateMethod`)

### Code Organization

```dart
// 1. Imports (grouped and ordered)
// Dart SDK imports
import 'dart:async';

// Flutter imports
import 'package:flutter/material.dart';

// Package imports
import 'package:go_router/go_router.dart';

// Project imports
import '../domain/entities/user.dart';

// 2. Class documentation
/// Brief description
/// 
/// Detailed description if needed
class MyClass {
  // 3. Static members
  static const String constant = 'value';
  
  // 4. Instance variables
  final String _privateField;
  
  // 5. Constructors
  const MyClass(this._privateField);
  
  // 6. Factory constructors
  factory MyClass.fromJson(Map<String, dynamic> json) => ...;
  
  // 7. Getters
  String get publicProperty => _privateField;
  
  // 8. Setters
  set value(String v) => _privateField = v;
  
  // 9. Methods (public first, then private)
  void publicMethod() {}
  
  void _privateMethod() {}
}
```

## File Naming Conventions

### Domain Layer
- Entities: `user.dart`, `product.dart`
- Repository interfaces: `auth_repository.dart`, `user_repository.dart`
- Use cases: `sign_in_usecase.dart`, `get_user_usecase.dart`

### Data Layer
- Models: `user_model.dart`, `product_model.dart`
- Data sources: `auth_remote_datasource.dart`, `user_local_datasource.dart`
- Repository implementations: `auth_repository_impl.dart`, `user_repository_impl.dart`

### Presentation Layer
- BLoC: `auth_bloc.dart`, `user_bloc.dart`
- Events: `auth_event.dart`, `user_event.dart`
- States: `auth_state.dart`, `user_state.dart`
- Pages: `login_page.dart`, `home_page.dart`
- Widgets: `user_card.dart`, `product_list_item.dart`

## Project Structure

Follow this structure for all features:

```
lib/features/[feature_name]/
├── data/
│   ├── datasources/
│   │   ├── [feature]_remote_datasource.dart
│   │   └── [feature]_local_datasource.dart
│   ├── models/
│   │   └── [entity]_model.dart
│   └── repositories/
│       └── [feature]_repository_impl.dart
├── domain/
│   ├── entities/
│   │   └── [entity].dart
│   ├── repositories/
│   │   └── [feature]_repository.dart
│   └── usecases/
│       ├── [action]_usecase.dart
│       └── [action]_usecase.dart
└── presentation/
    ├── bloc/
    │   ├── [feature]_bloc.dart
    │   ├── [feature]_event.dart
    │   └── [feature]_state.dart
    └── pages/
        └── [feature]_page.dart
```

## SOLID Principles

### 1. Single Responsibility Principle (SRP)

Each class should have one reason to change.

**✅ Good:**
```dart
class SignInUseCase {
  final AuthRepository repository;
  
  Future<Either<Failure, UserEntity>> call({
    required String email,
    required String password,
  }) async {
    return await repository.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
```

**❌ Bad:**
```dart
class AuthManager {
  // Handles sign in, sign up, validation, navigation, etc.
  // Too many responsibilities!
}
```

### 2. Open/Closed Principle (OCP)

Open for extension, closed for modification.

**✅ Good:**
```dart
abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> signIn(...);
}

class FirebaseAuthRepository implements AuthRepository { ... }
class MockAuthRepository implements AuthRepository { ... }
```

### 3. Liskov Substitution Principle (LSP)

Subtypes must be substitutable for their base types.

**✅ Good:**
```dart
class AuthRepositoryImpl implements AuthRepository {
  // Properly implements all methods from interface
}
```

### 4. Interface Segregation Principle (ISP)

Clients should not depend on interfaces they don't use.

**✅ Good:**
```dart
abstract class RemoteDataSource {
  Future<Response> get(String path);
}

abstract class LocalDataSource {
  Future<void> save(String key, String value);
}
```

**❌ Bad:**
```dart
abstract class DataSource {
  Future<Response> get(String path);
  Future<void> save(String key, String value);
  Future<void> delete(String key);
  // Too many methods, not all clients need all methods
}
```

### 5. Dependency Inversion Principle (DIP)

Depend on abstractions, not concretions.

**✅ Good:**
```dart
class SignInUseCase {
  final AuthRepository repository; // Interface, not implementation
  SignInUseCase(this.repository);
}
```

**❌ Bad:**
```dart
class SignInUseCase {
  final FirebaseAuthRepository repository; // Concrete implementation
}
```

## Clean Architecture Layers

### Domain Layer

- **Entities**: Pure Dart classes (use Freezed)
- **Repository Interfaces**: Abstract classes defining contracts
- **Use Cases**: Single-purpose business logic operations

**Rules:**
- NO dependencies on Flutter, Firebase, or any external packages (except Freezed, Dartz)
- Pure business logic only
- Use Freezed for entities
- Use Either<Failure, T> for error handling

**Example:**
```dart
@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    required String email,
    String? name,
  }) = _UserEntity;
}

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> signIn({
    required String email,
    required String password,
  });
}

class SignInUseCase {
  final AuthRepository repository;
  
  SignInUseCase(this.repository);
  
  Future<Either<Failure, UserEntity>> call({
    required String email,
    required String password,
  }) async {
    return await repository.signIn(email: email, password: password);
  }
}
```

### Data Layer

- **Models**: Data transfer objects with JSON serialization
- **Data Sources**: Remote (API) and Local (Cache) data sources
- **Repository Implementations**: Implement domain repository interfaces

**Rules:**
- Models extend/implement domain entities
- Use Freezed + json_serializable for models
- Convert models to entities in repository implementations
- Handle exceptions and convert to Failures

**Example:**
```dart
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String email,
    String? name,
  }) = _UserModel;
  
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      email: email,
      name: name,
    );
  }
}

class AuthRemoteDataSource {
  Future<UserModel> signIn({required String email, required String password}) {
    // Implementation
  }
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  
  @override
  Future<Either<Failure, UserEntity>> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final model = await remoteDataSource.signIn(
        email: email,
        password: password,
      );
      return Right(model.toEntity());
    } on AppException catch (e) {
      return Left(FailureMapper.mapExceptionToFailure(e));
    }
  }
}
```

### Presentation Layer

- **BLoC**: State management
- **Pages**: Screen widgets
- **Widgets**: Reusable UI components

**Rules:**
- Use BLoC for state management (no setState for complex state)
- Use Freezed for events and states
- Keep widgets small and focused
- Use dependency injection for BLoC

**Example:**
```dart
@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInRequested({
    required String email,
    required String password,
  }) = SignInRequested;
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated(UserEntity user) = _Authenticated;
  const factory AuthState.error(String message) = _Error;
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignInUseCase signInUseCase;
  
  AuthBloc({required this.signInUseCase}) : super(const AuthState.initial()) {
    on<SignInRequested>(_onSignInRequested);
  }
  
  Future<void> _onSignInRequested(
    SignInRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    
    final result = await signInUseCase(
      email: event.email,
      password: event.password,
    );
    
    result.fold(
      (failure) => emit(AuthState.error(failure.message)),
      (user) => emit(AuthState.authenticated(user)),
    );
  }
}
```

## State Management (BLoC)

### BLoC Pattern Rules

1. **One BLoC per feature**: Don't create a single BLoC for the entire app
2. **Use Freezed for events and states**: Ensures immutability and pattern matching
3. **Handle all states**: initial, loading, success, error
4. **Use Either for error handling**: In use cases, not in BLoC
5. **Keep BLoC logic minimal**: Business logic belongs in use cases

### Event Naming

- Use past tense for actions: `SignInRequested`, `UserLoaded`, `DataFetched`
- Use descriptive names: `RefreshUserDataRequested` not `RefreshRequested`

### State Naming

- Use descriptive names: `Authenticated`, `Loading`, `Error`
- Include data in state: `Authenticated(UserEntity user)`, not separate fields

### BLoC Best Practices

```dart
// ✅ Good: Clear event and state names
@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signInRequested({
    required String email,
    required String password,
  }) = SignInRequested;
}

// ✅ Good: All states handled
result.fold(
  (failure) => emit(AuthState.error(failure.message)),
  (user) => emit(AuthState.authenticated(user)),
);

// ❌ Bad: Business logic in BLoC
Future<void> _onSignInRequested(...) async {
  // Don't validate email here - use a validator or use case
  if (!email.contains('@')) {
    emit(AuthState.error('Invalid email'));
    return;
  }
  // ...
}
```

## Error Handling

### Error Handling Pattern

1. **Domain Layer**: Use `Either<Failure, T>` from Dartz
2. **Data Layer**: Catch exceptions, convert to Failures
3. **Presentation Layer**: Handle Failures in BLoC, show user-friendly messages

### Failure Types

Use Freezed unions for different failure types:

```dart
@freezed
class Failure with _$Failure {
  const factory Failure.server({
    required String message,
    int? statusCode,
  }) = ServerFailure;
  
  const factory Failure.network({
    required String message,
  }) = NetworkFailure;
  
  const factory Failure.cache({
    required String message,
  }) = CacheFailure;
  
  const factory Failure.validation({
    required String message,
  }) = ValidationFailure;
}
```

### Error Handling Flow

```dart
// Data Layer: Catch exceptions
try {
  final data = await remoteDataSource.getData();
  return Right(data.toEntity());
} on ServerException catch (e) {
  return Left(Failure.server(message: e.message));
} on NetworkException catch (e) {
  return Left(Failure.network(message: e.message));
}

// Presentation Layer: Handle failures
result.fold(
  (failure) => emit(AuthState.error(failure.message)),
  (data) => emit(AuthState.success(data)),
);
```

## Dependency Injection

### GetIt + Injectable Pattern

1. **Register dependencies** in `lib/core/di/injection_container.dart`
2. **Use `@injectable`** annotation for automatic registration (optional)
3. **Register in order**: Data sources → Repositories → Use cases → BLoCs

### Registration Rules

```dart
// ✅ Good: Register in dependency order
// 1. Data sources
getIt.registerLazySingleton<AuthRemoteDataSource>(
  () => AuthRemoteDataSourceImpl(firebaseAuth: getIt<FirebaseAuth>()),
);

// 2. Repositories
getIt.registerLazySingleton<AuthRepository>(
  () => AuthRepositoryImpl(remoteDataSource: getIt<AuthRemoteDataSource>()),
);

// 3. Use cases
getIt.registerLazySingleton<SignInUseCase>(
  () => SignInUseCase(getIt<AuthRepository>()),
);

// 4. BLoCs (use registerFactory for stateful BLoCs)
getIt.registerFactory<AuthBloc>(
  () => AuthBloc(signInUseCase: getIt<SignInUseCase>()),
);
```

### Dependency Injection Best Practices

- Use `registerLazySingleton` for stateless services
- Use `registerFactory` for stateful objects (like BLoCs)
- Always inject dependencies through constructors
- Never use `getIt` directly in business logic (only in DI setup)

## Routing Guidelines

### Route Constants

All routes must be defined in `lib/core/routing/app_routes.dart`:

```dart
class AppRoutes {
  AppRoutes._();
  
  static const String login = '/login';
  static const String home = '/home';
}
```

### Navigation

- Use `context.go()` for navigation (replaces current route)
- Use `context.push()` to add to navigation stack
- Always use route constants, never hardcode paths

```dart
// ✅ Good
context.go(AppRoutes.home);

// ❌ Bad
context.go('/home');
```

### Route Guards

Authentication guards are handled in `app_router.dart`. When adding new protected routes:

1. Add route constant to `app_routes.dart`
2. Add route definition to `app_router.dart`
3. The redirect logic will automatically protect the route

## Testing Requirements

### Test Structure

```
test/
├── features/
│   └── [feature_name]/
│       ├── data/
│       ├── domain/
│       └── presentation/
└── core/
```

### Testing Rules

1. **Unit tests** for use cases (required)
2. **Repository tests** with mocked data sources (required)
3. **BLoC tests** for state management (required)
4. **Widget tests** for complex UI components (recommended)

### Test Naming

- Test files: `[class_name]_test.dart`
- Test groups: `group('[ClassName]', () { ... });`
- Test cases: `test('should [expected behavior] when [condition]', () { ... });`

### Example Test

```dart
void main() {
  group('SignInUseCase', () {
    late SignInUseCase useCase;
    late MockAuthRepository mockRepository;
    
    setUp(() {
      mockRepository = MockAuthRepository();
      useCase = SignInUseCase(mockRepository);
    });
    
    test('should return UserEntity when sign in is successful', () async {
      // Arrange
      final user = UserEntity(id: '1', email: 'test@test.com');
      when(() => mockRepository.signIn(...))
          .thenAnswer((_) async => Right(user));
      
      // Act
      final result = await useCase(email: 'test@test.com', password: 'password');
      
      // Assert
      expect(result, Right(user));
    });
  });
}
```

## Code Generation

### When to Run Build Runner

Always run `build_runner` after:
- Adding new Freezed classes
- Modifying JSON serializable models
- Adding new `@injectable` annotations

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### Code Generation Rules

1. **Never edit generated files** (`.freezed.dart`, `.g.dart`, `.config.dart`)
2. **Commit generated files** to version control
3. **Run build_runner** before committing if you added/modified code generation annotations

## Documentation Standards

### Code Documentation

1. **Public APIs**: Must have documentation comments
2. **Complex logic**: Add inline comments explaining "why", not "what"
3. **Use DartDoc format**: `///` for documentation comments

### Documentation Examples

```dart
/// Signs in a user with email and password.
///
/// Returns [Either] containing [UserEntity] on success or [Failure] on error.
/// 
/// Throws [ValidationException] if email or password is invalid.
Future<Either<Failure, UserEntity>> signIn({
  required String email,
  required String password,
});
```

### README Updates

When adding new features:
- Update README.md with feature description
- Add examples if the feature has a public API
- Update project structure diagram if needed

## Git Workflow

### Branch Naming

- Features: `feature/feature-name`
- Bugs: `bugfix/bug-description`
- Hotfixes: `hotfix/issue-description`

### Commit Messages

Follow conventional commits:

```
feat: add user profile page
fix: resolve authentication redirect issue
refactor: simplify error handling in auth repository
docs: update routing documentation
test: add unit tests for sign in use case
```

### Pull Request Process

1. **Create feature branch** from `main`
2. **Make changes** following all guidelines
3. **Run tests**: `flutter test`
4. **Run analyzer**: `flutter analyze`
5. **Format code**: `dart format .`
6. **Update documentation** if needed
7. **Create PR** with clear description
8. **Request review** from at least one maintainer

### PR Description Template

```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Breaking change
- [ ] Documentation update

## Testing
- [ ] Unit tests added/updated
- [ ] Manual testing completed
- [ ] All tests passing

## Checklist
- [ ] Code follows project style guidelines
- [ ] Self-review completed
- [ ] Comments added for complex logic
- [ ] Documentation updated
- [ ] No new warnings generated
```

## Code Review Guidelines

### For Authors

- Keep PRs small and focused (one feature/bug fix per PR)
- Respond to review comments promptly
- Make requested changes or discuss alternatives
- Ensure all CI checks pass

### For Reviewers

- Be constructive and respectful
- Check for:
  - Architecture compliance
  - Code style adherence
  - Test coverage
  - Documentation completeness
  - Performance considerations
- Approve when satisfied or request changes with clear feedback

## Additional Guidelines

### Performance

- Avoid unnecessary rebuilds (use `const` constructors)
- Use `ListView.builder` for long lists
- Dispose controllers and streams properly
- Avoid memory leaks (cancel subscriptions)

### Security

- Never commit API keys or secrets
- Use environment variables for sensitive data
- Validate all user inputs
- Sanitize data before displaying

### Accessibility

- Use semantic widgets (`Semantics`, `ExcludeSemantics`)
- Provide meaningful labels
- Support screen readers
- Test with accessibility tools

## Questions?

If you have questions about these guidelines:
1. Check existing code for examples
2. Review similar features in the codebase
3. Ask in PR comments or discussions
4. Refer to Flutter/Dart official documentation

Thank you for contributing to PujaKaro! 🎉

