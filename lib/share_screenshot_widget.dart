library share_screenshot_widget;

import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

/// Here, import
///
/// Here, ShareWidgets Class
// class ShareScreenshotWidgets {
//   /// GlobalKey [globalKey].
//   // static final globalKey = GlobalKey();
//
//   Future<void> shareWidgets( GlobalKey globalKey) async {
//     /// convert [_globalKey]  as RenderRepaintBoundary.
//
//     final RenderRepaintBoundary boundary =
//         globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
//
//     /// convert [boundary]  as image.
//
//     final image = await boundary.toImage(pixelRatio: 2.0);
//
//     /// convert image  as png.
//     final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
//
//     /// save image in path.
//
//     final file = File(
//         '${(await getTemporaryDirectory()).path}/${DateTime.now().millisecondsSinceEpoch}.jpg');
//     await file.writeAsBytes(byteData!.buffer.asUint8List());
//
//     Future.delayed(const Duration(seconds: 0), () async {
//       /// share Files image.
//
//       Share.shareXFiles(
//         [XFile(file.path)],
//       );
//     });
//   }
//
// }
Future<void> shareWidgets({
  required GlobalKey globalKey,
}) async {
  /// convert [globalKey]  as RenderRepaintBoundary.

  final RenderRepaintBoundary boundary =
      globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;

  /// convert [boundary]  as image.

  final image = await boundary.toImage(pixelRatio: 2.0);

  /// convert image  as png.
  final byteData = await image.toByteData(format: ui.ImageByteFormat.png);

  /// save image in path.

  final file = File(
      '${(await getTemporaryDirectory()).path}/${DateTime.now().millisecondsSinceEpoch}.jpg');
  await file.writeAsBytes(byteData!.buffer.asUint8List());

  Future.delayed(const Duration(seconds: 0), () async {
    /// share Files image.

    Share.shareXFiles(
      [XFile(file.path)],
    );
  });
}

/// share File

Future<void> shareFile({required File file, String subject = ''}) async {
  Share.shareXFiles([XFile(file.path)], subject: subject);
}

/// share String
Future<void> shareString({required String text, String subject = ''}) async {
  Share.share(text, subject: subject);
}

class ShareTextAsImage extends StatelessWidget {
  final Widget child;
  final GlobalKey globalKey;

  const ShareTextAsImage({
    Key? key,
    required this.child,
    required this.globalKey,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    /// RepaintBoundary with child need share.
    return RepaintBoundary(
        key: globalKey, child: Container(color: Colors.white, child: child));
  }
}

class ShareScreenshotAsImage extends StatelessWidget {
  final Widget child;
  final GlobalKey globalKey;

  const ShareScreenshotAsImage({
    Key? key,
    required this.child,
    required this.globalKey,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    /// RepaintBoundary with child need share.

    return RepaintBoundary(key: globalKey, child: Container(child: child));
  }
}
