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
class ShareWidgets {
  /// GlobalKey [_globalKey].
  final _globalKey = GlobalKey();

  Future<void> shareWidgets() async {
    /// convert [_globalKey]  as RenderRepaintBoundary.

    final RenderRepaintBoundary boundary =
        _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;

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

  /// Container Screenshot.

  Widget containerScreenshot({
    required Widget child,
  }) {
    /// RepaintBoundary with child need share.

    return RepaintBoundary(
        key: _globalKey, child: Container(color: Colors.white, child: child));
  }
}
