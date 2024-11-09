<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

## Features

![Image](https://raw.githubusercontent.com/Majid460/Customizable-flutter-input_field/refs/heads/main/images/image.png)

This customizable input field is a modified form of Flutter text field.

1. Customizable Borders: Support for both Underline and Outline border types.
2. Icons: Easily add start and end icons.
3. Validation: Built-in validation support.
4. Autofill: Support for autofill hints.
5. Custom Styling: Extensive options for text, cursor, and decoration styles.
6. Editable & Clickable States: Fields can be set to editable or read-only modes.
7. Input Formatting: Support for text input formatters.
8. Responsive Layout: Uses sizer for responsive layouts.

## Getting started

Add the dependency in pubspec.yaml:
```dart
dependencies:
  ...
  customized_input_field: ^0.0.1
```  


## Usage

```dart
import 'package:flutter/material.dart';
import 'package:customized_input_field/customized_input_field.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Customized Input Field Example')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomizedInputField(
            heading: 'Username',
            hintText: 'Enter your username',
            controller: TextEditingController(),
            startIcon: const Icon(Icons.person),
            endIcon: const Icon(Icons.check),
            onEndIconClicked: () {
              print('End icon clicked');
            },
            borderType: BorderType.outline,
            inputFieldFillColor: Colors.grey[200],
            borderColor: Colors.blue,
            cursorColor: Colors.red,
          ),
        ),
      ),
    );
  }
}

```

## Additional information

Contributions of any kind are more than welcome! Feel free to fork and improve in any way you want, make a pull request, or open an issue.
