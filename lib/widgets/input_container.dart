import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kistmat_connection/utils/constants.dart';

class InputContainer extends StatelessWidget {
  InputContainer(
      {@required this.child,
      this.width,
      this.color,
      this.radius,
      this.showBorder,
      this.borderWidth = 2,
      this.borderColor,
      this.containerHeight});

  final Widget child;
  final int width;
  final Color color;
  final double radius;
  bool showBorder;
  final Color borderColor;
  double borderWidth;
  double containerHeight;

  @override
  Widget build(BuildContext context) {
    showBorder = showBorder ?? false;
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      height: 50,
      width: width == null ? (size.width * 0.8) : (size.width * (width / 100)),
      decoration: BoxDecoration(
          color: color ?? kPrimaryLightColor,
          border: showBorder
              ? Border.all(
                  color: this.borderColor ?? Colors.grey,
                  width: this.borderWidth)
              : null,
          borderRadius: BorderRadius.circular(radius ?? 20)),
      child: child,
    );
  }
}
