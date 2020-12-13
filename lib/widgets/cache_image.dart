import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loading_progress.dart';

class AppCacheImage extends StatelessWidget {
  String imageUrl;
  double width;
  double height;
  Widget imageFailWidget;
  double round;
  bool showNative;

  AppCacheImage(
      {@required this.imageUrl,
      @required this.width,
      @required this.height,
      this.round,
      this.imageFailWidget,
      this.showNative});

  @override
  Widget build(BuildContext context) {
    imageUrl = imageUrl ?? "";
    return ClipRRect(
      borderRadius: BorderRadius.circular(this.round ?? 0),
      child: CachedNetworkImage(
        width: width,
        height: height,
        fit: BoxFit.cover,
        imageUrl: imageUrl,
        placeholder: (context, url) => NativeProgress(
          showNative: this.showNative ?? false,
        ),
        errorWidget: (context, url, error) => imageFailWidget == null
            ? Icon(Icons.image, size: 0.80 * width.toDouble())
            : imageFailWidget,
      ),
    );
  }
}
