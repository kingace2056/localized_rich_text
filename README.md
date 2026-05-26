<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A flutter plugin to facilitate the localization of a RichText.

## Getting started

Install the library in your `pubspec.yaml`.

```dart
dependencies:
  localized_rich_text: ^0.0.7
```

## Usage

```dart
final textToLocalize = "Hi #name, how are you?";
final userName = "Jhon";

final textSpanProperties = TextSpanProperties(
    recognizer: TapGestureRecognizer()
      ..onTap = () {
        //Do something
      },
  );
...
LocalizedRichText(
  text: textToLocalize,
  defaultTextStyle: Theme.of(context).textTheme.bodyText1!,
  keys: [
    LocalizedRichTextKey(
      key: '#name',
      value: userName,
      textStyle: Theme.of(context).textTheme.subtitle1!,
      textSpanProperties: textSpanProperties,
    ),
  ],
)
```

## Parameters explanation

#### text </br>

This must be the `String` to localize.</br>
The `dynamic` values inside the <strong><em>text</em></strong> have to be **unique**,
you can mark them with a special character, or you can use a unique value.
</br>
</br>
The string could be:

```dart
final textToLocalize = "Hi #name, how are you?";
```

or

```dart
AppLocalizations.of(context)!.title,
```

For more info about `internationalization` you can check the
[flutter documentation](https://docs.flutter.dev/development/accessibility-and-localization/internationalization).

#### defaultTextStyle </br>

This is the `TextStyle` used for the static words.

#### keys </br>

This is the `List` that has to contain the `dynamic` values.
</br>
Each `dynamic` value has to be passed like an **LocalizedRichTextKey** object.
</br>
This list cannot be `empty`.
</br>
</br>
The `keys` will be ordered by the order in which they are been inserted in the `String` to localize.
</br>
This means that the order in which you pass the `keys` inside the `keys array` isn't important.
</br>

```dart
LocalizedRichText(
  ...,
  keys: [
    LocalizedRichTextKey(
      key: '#name',
      value: userName,
      textStyle: Theme.of(context).textTheme.subtitle1!,
    ),
  ],
)
```

## Swift Package Manager

Flutter supports integrating iOS and macOS plugins through Swift Package Manager (SwiftPM). This package includes SwiftPM manifests for both platforms.

### For app developers (using this plugin)

1. Ensure your Flutter SDK is recent enough (this plugin requires Flutter `>=3.41.0`).
2. Enable SwiftPM support (global):

```sh
flutter config --enable-swift-package-manager
```

3. Run your app once with Flutter to migrate the Xcode project:

```sh
flutter run
```

Flutter falls back to CocoaPods for any plugins that don't yet support SwiftPM.

### For plugin authors / contributors (this repo)

- iOS manifest: [ios/localized_rich_text/Package.swift](ios/localized_rich_text/Package.swift#L1)
- macOS manifest: [macos/localized_rich_text/Package.swift](macos/localized_rich_text/Package.swift#L1)

To validate integration end-to-end using the included example app:

```sh
cd example
flutter build ios --config-only --no-codesign
```

Note: this repo's `example/` does not include a full macOS desktop runner. To validate macOS integration, run `flutter build macos --config-only` from a Flutter app that has macOS support enabled.

### CocoaPods (legacy)

This plugin continues to ship `.podspec` files for projects that still use CocoaPods:

- iOS podspec: [ios/localized_rich_text.podspec](ios/localized_rich_text.podspec#L1)
- macOS podspec: [macos/localized_rich_text.podspec](macos/localized_rich_text.podspec#L1)
