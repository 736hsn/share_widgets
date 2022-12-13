# Flutter Share Widget as Screenshot

[![Pub](https://img.shields.io/pub/v/bloc.svg)](https://pub.dev/packages/share_screenshot_widget)
[![Pub](https://i.imgur.com/aV6DDA7.png)](https://www.buymeacoffee.com/736hassan)
[![Pub](https://img.shields.io/badge/chat-on%20Telegram-blue.svg)](https://t.me/hsn9_7)
[![Pub](https://github.com/felangel/bloc/workflows/build/badge.svg)](https://github.com/736hsn)

In this guide, we will learn how to implement the share screenshot of the widgets you want in Flutter by using the external package name share_widgets. This plugin allows Flutter apps to share screenshot. For example, when you are need share screenshot. this package will be share . In this example, we are going to show you how to share widget in Flutter. which is provided by the share_widgets package. Here’s an example of how you could use it:
# Usage

First, add `share_widgets` as a dependency in your pubspec.yaml file.

```yaml
dependencies:
  share_screenshot_widget: ^0.0.3
```

Don't forget to `flutter pub get`.

Then import:

```dart
import 'package:share_screenshot_widget/share_screenshot_widget.dart';
```

Now you can create Container Screenshot  use its widget

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
// add Class ShareWidgets
  ShareWidgets sharing = ShareWidgets();
  
  @override
  Widget build(BuildContext context) {
    // add widget containerScreenshot
    return sharing.containerScreenshot(
      child: Text(
        'Share screenshot widget.',
      ),
    );
  }
}
```
### To Share widget as Screenshot
```dart
// add Class ShareWidgets

 ShareWidgets sharing = ShareWidgets();
shareWidgets()async{
  // add fun shareWidgets
  sharing.shareWidgets();
}
```

### Examples
Simple usage example can be found [in the example folder](example/lib/main.dart).

**Mobile platforms (Android and iOS)**

Sharing widget as Screenshot in (WhatsApp,Telegram, Instagram, Facebook Messenger)



### Contributing?
You're always welcome. See [Contributing Guidelines](https://github.com/736hsn/share_widgets). You can also take a look at [Status Tracker](https://github.com/736hsn/share_widgets) to know more information about current or pending features/issues.

### Powered By Hassan Tanoma
