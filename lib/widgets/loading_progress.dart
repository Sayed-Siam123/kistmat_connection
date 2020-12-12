import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NativeProgress extends StatelessWidget {
  bool showNative;

  NativeProgress({this.showNative});

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? this.showNative
            ? CircularProgressIndicator()
            : CupertinoActivityIndicator()
        : CupertinoActivityIndicator();
  }
}
