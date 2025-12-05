# Contributing to AutoApp

Thank you for considering contributing to AutoApp! This document outlines the guidelines and best practices for contributing to this project.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Workflow](#development-workflow)
- [Coding Standards](#coding-standards)
- [Commit Guidelines](#commit-guidelines)
- [Pull Request Process](#pull-request-process)
- [Testing Requirements](#testing-requirements)
- [Documentation](#documentation)
- [Community](#community)

---

## Code of Conduct

### Our Pledge

We are committed to providing a welcoming and inclusive environment for all contributors. We expect everyone to:

- Be respectful and considerate
- Accept constructive criticism gracefully
- Focus on what's best for the community
- Show empathy towards other community members
- Avoid discriminatory or harassing behavior

### Enforcement

Violations of the code of conduct may result in temporary or permanent exclusion from the project. Please report any concerns to the project maintainers.

---

## Getting Started

### Prerequisites

Before contributing, ensure you have:

- Flutter SDK (latest stable version)
- Android Studio or VS Code with Flutter extensions
- Git for version control
- An Android device or emulator with Android Auto support
- Basic understanding of Flutter and Dart

### Setting Up Your Development Environment

1. **Fork the repository**
   ```bash
   # Fork on GitHub, then clone your fork
   git clone https://github.com/YOUR_USERNAME/AutoApp.git
   cd AutoApp
   ```

2. **Add upstream remote**
   ```bash
   git remote add upstream https://github.com/ORIGINAL_OWNER/AutoApp.git
   ```

3. **Install dependencies**
   ```bash
   flutter pub get
   ```

4. **Verify setup**
   ```bash
   flutter doctor
   flutter test
   ```

---

## Development Workflow

### Branching Strategy

We follow a Git Flow-inspired branching model:

- **`main`**: Production-ready code
- **`develop`**: Integration branch for features
- **`feature/*`**: New features (branch from `develop`)
- **`bugfix/*`**: Bug fixes (branch from `develop`)
- **`hotfix/*`**: Critical fixes (branch from `main`)
- **`release/*`**: Release preparation (branch from `develop`)

### Creating a Feature Branch

```bash
# Update your local develop branch
git checkout develop
git pull upstream develop

# Create a feature branch
git checkout -b feature/your-feature-name
```

### Keeping Your Branch Updated

```bash
# Regularly sync with upstream
git fetch upstream
git rebase upstream/develop
```

---

## Coding Standards

### Dart Style Guide

We follow the official [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style).

#### Key Points:

1. **Formatting**
   - Use `flutter format .` before committing
   - Line length: 80 characters (max 100 for exceptional cases)
   - Use 2 spaces for indentation

2. **Naming Conventions**
   ```dart
   // Classes, enums, typedefs: UpperCamelCase
   class VehicleConnection {}
   
   // Libraries, packages, directories: lowercase_with_underscores
   library auto_app.utils;
   
   // Variables, functions, parameters: lowerCamelCase
   String userName = 'John';
   void getUserPreferences() {}
   
   // Constants: lowerCamelCase
   const maxRetries = 3;
   
   // Private members: prefix with underscore
   String _privateField;
   void _privateMethod() {}
   ```

3. **File Organization**
   ```
   lib/
   ├── main.dart
   ├── models/           # Data models
   ├── screens/          # UI screens
   ├── widgets/          # Reusable widgets
   ├── services/         # Business logic, APIs
   ├── providers/        # State management
   ├── utils/            # Utility functions
   └── constants/        # App constants
   ```

### Android Auto Specific Guidelines

1. **UI Components**
   - Minimum touch target size: 76dp
   - Text size: minimum 24sp
   - Maximum 2 levels of navigation
   - Limit list items to 6 per screen

2. **Performance**
   - Keep UI updates under 16ms (60 FPS)
   - Minimize network calls during drive
   - Cache data appropriately
   - Handle connection loss gracefully

3. **Safety**
   - No video playback while driving
   - Minimize text input requirements
   - Prioritize voice commands
   - Avoid distracting animations

### Code Quality

1. **Documentation**
   ```dart
   /// Connects to the vehicle's Android Auto system.
   ///
   /// Returns `true` if connection successful, `false` otherwise.
   /// Throws [ConnectionException] if device is incompatible.
   Future<bool> connectToVehicle() async {
     // Implementation
   }
   ```

2. **Error Handling**
   ```dart
   try {
     await riskyOperation();
   } catch (e) {
     // Log error
     debugPrint('Error: $e');
     // Handle gracefully
     return fallbackValue;
   }
   ```

3. **Null Safety**
   - Use null-safe Dart (enabled by default)
   - Avoid `!` operator when possible
   - Use `?.` and `??` operators appropriately

---

## Commit Guidelines

### Commit Message Format

We follow [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>(<scope>): <subject>

<body>

<footer>
```

#### Types:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code refactoring
- `perf`: Performance improvements
- `test`: Adding or updating tests
- `chore`: Maintenance tasks
- `ci`: CI/CD changes

#### Examples:

```bash
# Good commit messages
feat(voice): add voice command support for navigation
fix(ui): correct button alignment on landscape mode
docs(readme): update installation instructions
refactor(services): simplify API client architecture

# Bad commit messages
fix bug
update stuff
changes
WIP
```

### Commit Best Practices

- Write in present tense ("add feature" not "added feature")
- Keep subject line under 50 characters
- Capitalize subject line
- No period at the end of subject
- Use body to explain what and why, not how
- Reference issues: `Fixes #123` or `Closes #456`

---

## Pull Request Process

### Before Submitting

1. **Code Quality Checks**
   ```bash
   # Format code
   flutter format .
   
   # Run analyzer
   flutter analyze
   
   # Run tests
   flutter test
   
   # Check for unused dependencies
   flutter pub outdated
   ```

2. **Update Documentation**
   - Update README if needed
   - Add/update inline documentation
   - Update CHANGELOG.md

3. **Self-Review**
   - Review your own changes
   - Ensure no debug code remains
   - Check for sensitive data

### Submitting a Pull Request

1. **Push your branch**
   ```bash
   git push origin feature/your-feature-name
   ```

2. **Create PR on GitHub**
   - Use a clear, descriptive title
   - Fill out the PR template completely
   - Link related issues
   - Add screenshots for UI changes
   - Request reviews from maintainers

3. **PR Template**
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
   - [ ] Integration tests added/updated
   - [ ] Manual testing completed
   
   ## Checklist
   - [ ] Code follows style guidelines
   - [ ] Self-review completed
   - [ ] Documentation updated
   - [ ] No new warnings
   - [ ] Tests pass locally
   
   ## Screenshots (if applicable)
   
   ## Related Issues
   Fixes #123
   ```

### Review Process

- Maintainers will review within 2-3 business days
- Address review comments promptly
- Keep discussions constructive and professional
- Update your PR based on feedback
- Once approved, a maintainer will merge

---

## Testing Requirements

### Unit Tests

- Write tests for all business logic
- Aim for >80% code coverage
- Test edge cases and error conditions

```dart
// Example unit test
test('VehicleConnection should connect successfully', () async {
  final connection = VehicleConnection();
  final result = await connection.connect();
  expect(result, isTrue);
});
```

### Widget Tests

- Test UI components and interactions
- Verify widget rendering
- Test user interactions

```dart
testWidgets('Button should display correct text', (tester) async {
  await tester.pumpWidget(MyWidget());
  expect(find.text('Connect'), findsOneWidget);
});
```

### Integration Tests

- Test complete user flows
- Verify Android Auto integration
- Test on real devices when possible

### Running Tests

```bash
# Run all tests
flutter test

# Run with coverage
flutter test --coverage

# Run specific test file
flutter test test/models/vehicle_test.dart
```

---

## Documentation

### Code Documentation

- Document all public APIs
- Use DartDoc comments (`///`)
- Include examples in documentation
- Keep documentation up-to-date with code changes

### Project Documentation

Update relevant documentation when:
- Adding new features
- Changing APIs
- Modifying setup process
- Updating dependencies

### Documentation Files

- **README.md**: Project overview and quick start
- **PRD.md**: Product requirements
- **DEVELOPMENT.md**: Development notes
- **CONTRIBUTING.md**: This file
- **CHANGELOG.md**: Version history

---

## Community

### Communication Channels

- **GitHub Issues**: Bug reports and feature requests
- **GitHub Discussions**: Questions and general discussions
- **Pull Requests**: Code contributions and reviews

### Getting Help

- Check existing issues and documentation
- Search closed issues for similar problems
- Ask questions in GitHub Discussions
- Be specific and provide context

### Reporting Bugs

Use the bug report template and include:
- Clear description of the issue
- Steps to reproduce
- Expected vs actual behavior
- Environment details (Flutter version, Android version, device)
- Screenshots or logs if applicable

### Suggesting Features

Use the feature request template and include:
- Clear description of the feature
- Use case and benefits
- Possible implementation approach
- Alternative solutions considered

---

## Recognition

Contributors will be recognized in:
- CONTRIBUTORS.md file
- Release notes for significant contributions
- Special thanks in README for major features

---

## Questions?

If you have questions about contributing, please:
1. Check this document first
2. Search existing issues
3. Open a new issue with the `question` label

Thank you for contributing to AutoApp! 🚗✨
