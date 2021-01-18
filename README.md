# Dart and Flutter libs

## Packages

- [Multiplier Icons](multiplier_icons) - SVG icons

## How create a new package

See [Developing packages & plugins](https://flutter.dev/docs/development/packages-and-plugins/developing-packages) for start a new package.

### Testing

- Create a testing, see (Testing Flutter Apps)[https://flutter.dev/docs/testing]
- Run `flutter test --coverage` https://pub.dev/packages/flutter_coverage_badge
- Add a `flutter_coverage_badge` package in the pubspec.yml file
- Run `flutter pub run test_coverage` for generate badge coverage
- Add `![Coverage](coverage_badge.svg?sanitize=true)` in the README.md

### Docs

- Create a simple documentation in README.md
- Include use examples in documentation

### Notes

- All libs must have testing and documentation
- When creating a pull request, execute the test pipeline by passing the lib folder name as an argument https://github.com/multiplierx/dart-libs/actions?query=workflow%3A%22Flutter+Test%22
