# Flutter MVVM Template

A scalable and clean architecture Flutter template, implementing the Model-View-ViewModel (MVVM) pattern with a clear separation of concerns.

## Features

- Clean architecture with MVVM pattern
- Organized project structure
- Separation of UI, business logic, and data layers
- Ready-to-use folder structure for new projects
- Pre-configured routing system
- Asset management setup

## Project Structure

```
lib/
├── core/                 # Core functionality and utilities
│   ├── app/              # App initialization and configuration
│   ├── resources/        # App-wide resources (routes, themes, etc.)
│   └── services/         # Global services (notifications, etc.)
│
├── data/                 # Data handling layer
│   ├── datasources/      # Data sources (remote and local)
│   ├── models/           # Data models and DTOs
│   └── repositories/     # Repository implementations
│
├── domain/               # Business logic layer
│   ├── repositories/     # Repository interfaces
│   └── usecases/         # Business logic use cases
│
├── presentation/         # UI layer
│   ├── common/           # Shared UI components
│   └── pages/            # App screens
│       └── {feature}/    # Feature-specific components
│           ├── view/     # UI components
│           └── viewmodel/ # ViewModels for UI logic
│
└── main.dart             # Entry point
```

## Architecture

### Core Layer
The foundation layer containing essential app components:

- **app**: Application setup and configuration
  - `app.dart`: Main app configuration with MaterialApp setup

- **resources**: Global resources for consistent app-wide usage
  - `routes_manager.dart`: Navigation routes and route generation
  - `color_manager.dart`: Color palette definitions
  - `font_manager.dart`: Typography styles and font size management
  - `assets_manager.dart`: Asset path management for images and translations
  - `strings_manager.dart`: App-wide string constants
  - `constants_manager.dart`: App-wide constant values
  - `functions/`: Utility functions used across the app
    - `extended_functions/`: Platform-specific or complex utility functions

- **services**: App-wide services such as notifications and connectivity
  - `notification/`: Notification handling
    - `background_notification/`: Services for handling background notifications
    - `local_notification/`: Local notification implementation

### Data Layer
Responsible for data operations and external interactions:
- **datasources**: Remote (API) and local (database) data sources
  - `remote/`: API clients and network data sources
  - `local/`: Local storage implementations (SharedPreferences, SQLite, etc.)
- **models**: Data transfer objects and entity representations
- **repositories**: Implementation of repository interfaces defined in the domain layer

### Domain Layer
Contains the business logic independent of any UI or database:
- **repositories**: Interfaces defining data contracts
- **usecases**: Business logic encapsulated in use cases

### Presentation Layer
Handles UI components and user interactions:
- **common**: Reusable UI components
- **pages**: Feature-specific screens
  - **view**: Widget implementations
  - **viewmodel**: View logic handling state and business rules

## Getting Started

1. Clone this repository
2. Rename the project:
   - Update `name` in `pubspec.yaml`
   - Change package names in Android and iOS configurations
3. Install dependencies:
   ```
   flutter pub get
   ```
4. Run the app:
   ```
   flutter run
   ```

## Adding New Features

1. Create relevant data models in `data/models/`
2. Define repository interfaces in `domain/repositories/`
3. Implement repositories in `data/repositories/`
4. Create use cases in `domain/usecases/`
5. Create a viewmodel in `presentation/pages/{feature}/viewmodel/`
6. Implement UI in `presentation/pages/{feature}/view/`
7. Add routes in `core/resources/routes_manager.dart`

## Resource Management

### Adding Colors
Add new colors to the `color_manager.dart` file:
```dart
static const Color primaryColor = Color(0xFF123456);
```

### Adding Fonts
1. Place font files in `assets/fonts/`
2. Register fonts in `pubspec.yaml`
3. Define font styles in `font_manager.dart`

### Adding Images
1. Place images in `assets/images/`
2. Define paths in `assets_manager.dart`:
```dart
static const String logoImage = '$imagePath/logo.png';
```

### Adding Strings
Add new string constants to `strings_manager.dart`:
```dart
static const String welcome = "Welcome to the app";
```

## Dependencies

The template comes with minimal dependencies. Add project-specific dependencies in `pubspec.yaml` as needed.

## License

[Add license information here]