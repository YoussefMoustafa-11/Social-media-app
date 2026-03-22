# Project Guidelines

## Code Style
- Follow analyzer and lint defaults from `analysis_options.yaml` (`package:flutter_lints/flutter.yaml`).
- Use Dart naming conventions consistently:
	- files: `snake_case.dart`
	- classes/widgets: `PascalCase`
	- private members: `_leadingUnderscore`
- Reuse shared UI primitives before creating new ones:
	- `lib/Core/themes/app_color.dart`
	- `lib/Core/themes/app_text_style.dart`
	- `lib/Core/widgets/`
- Prefer small composable widgets in each feature’s `presentation/view/widgets/`.
- Dispose `TextEditingController` and animation/focus controllers in `dispose()` for all `StatefulWidget`s.

## Architecture
- The project is organized as **feature-first** under `lib/feature/`.
- Shared cross-feature code lives under `lib/Core/`:
	- routing: `lib/Core/routing/`
	- themes: `lib/Core/themes/`
	- shared widgets: `lib/Core/widgets/`
	- utilities: `lib/Core/utils/`
- Navigation is centralized with `go_router`:
	- route constants in `lib/Core/routing/app_routes.dart`
	- router setup in `lib/Core/routing/router_generation_config.dart`
- Current codebase is mostly UI/prototype-focused; many feature `data/` directories are scaffolds.

## Build and Test
Run from workspace root:
- `flutter pub get`
- `flutter analyze`
- `flutter test`
- `flutter run`
- `flutter build apk --release`

## Conventions
- For new screens/features, follow existing folder structure:
	- `lib/feature/<feature>/presentation/view/`
	- `lib/feature/<feature>/presentation/view/widgets/` for local components
- For routes, always:
	1. add a constant to `AppRoutes` in `lib/Core/routing/app_routes.dart`
	2. register route in `lib/Core/routing/router_generation_config.dart`
	3. use route constants (avoid hardcoded route strings)
- Keep visual consistency with `AppColors` and `AppTextStyle` where practical.
- Keep assets under configured folders in `pubspec.yaml` (currently `assets/images/`).
- Do not edit generated/build artifacts (for example `build/` outputs).

## Pitfalls and Environment Notes
- Android is configured; no `ios/` project is currently present.
- Android build uses Java 17 in `android/app/build.gradle.kts`.
- Dart SDK constraint is `^3.10.7` in `pubspec.yaml`.
- Release signing currently points to debug signing (`android/app/build.gradle.kts` TODO); update for production signing.
- `GoRouter` `initialLocation` is currently `AppRoutes.homeView`; change deliberately if auth/splash-first flow is required.
- `image_picker` is in use; ensure permission handling remains correct when extending media flows.

## UI and Design Consistency Review

When reviewing Flutter UI code in this project, analyze the following:

### Color Consistency
- Ensure colors come from `AppColors` in `lib/Core/themes/app_color.dart`.
- Avoid hardcoded colors like `Colors.blue`, `Colors.red`, etc.
- Check that background colors and foreground text colors have good contrast.
- Verify primary, secondary, and accent colors are used consistently across screens.

### Typography
- Prefer `AppTextStyle` from `lib/Core/themes/app_text_style.dart`.
- Avoid random font sizes unless necessary.
- Headings should be visually larger than body text.
- Ensure similar screens use the same typography hierarchy.

### Layout Consistency
- Verify spacing consistency (padding, margins).
- Avoid inconsistent spacing between widgets.
- Use common spacing patterns across screens.

### Widget Reuse
- Prefer reusable widgets in `lib/Core/widgets/`.
- If similar UI appears in multiple screens, recommend extracting a shared widget.

### Screen Design Consistency
- Check that buttons, text fields, and cards have consistent shapes and styles.
- Verify similar screens follow similar layouts.
- Ensure navigation and UI structure feels consistent.

### Responsive Design
- Ensure layouts do not break on different screen sizes.
- Avoid hardcoded widths/heights when possible.

When problems are detected:
- Suggest improvements.
- Reference the file and widget where the issue occurs.