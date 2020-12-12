import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/widgets/measure_size.dart';

class RoundButtonIcon extends StatefulWidget {
  RoundButtonIcon(
      {@required this.text,
      this.color,
      @required this.textColor,
      @required this.function,
      this.width,
      this.borderColor,
      this.round,
      this.auto,
      this.borderWidth,
      this.textStyle,
      this.fontSize,
      this.iconPath,
      this.isBold,
      this.iconColor,
      this.iconSize = 20});

  final String text;
  final Color textColor;
  Color color;
  final Function function;
  final int width;
  double round;
  Color borderColor;
  bool auto;
  double borderWidth;
  TextStyle textStyle;
  double fontSize;
  String iconPath;
  bool isBold;
  Color iconColor;
  double iconSize;

  @override
  _RoundButtonIconState createState() => _RoundButtonIconState();
}

class _RoundButtonIconState extends State<RoundButtonIcon> {
  double totalWidth = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    widget.color = widget.color ?? Colors.transparent;
    widget.round = widget.round ?? 20;
    widget.auto = widget.auto ?? false;
    widget.isBold = widget.isBold ?? false;
    widget.color = widget.color ?? Color(0xFFFFFFFF);

    widget.textStyle = widget.textStyle ?? GoogleFonts.roboto();

    return Container(
      width: double.infinity,
      height: 55,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(widget.round),
        child: FlatButton(
          onPressed: widget.function,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  widget.iconPath,
                  width: widget.iconSize,
                  height: widget.iconSize,
                  color: widget.iconColor,
                  fit: BoxFit.fill,
                ),
                SizedBox(width: 20),
                Text(
                  widget.text,
                  style: widget.textStyle.copyWith(
                      color: widget.textColor,
                      fontSize: widget.fontSize,
                      fontWeight:
                          widget.isBold ? FontWeight.bold : FontWeight.normal),
                ),
              ],
            ),
          ),
          color: widget.color,
          shape: widget.borderColor == null
              ? RoundedRectangleBorder()
              : RoundedRectangleBorder(
                  side: BorderSide(
                      color: widget.borderColor,
                      width: widget.borderWidth ?? 1,
                      style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(widget.round)),
        ),
      ),
    );
    /*  else {
      return Container(
        width: widget.width == null
            ? (size.width * 0.8)
            : (size.width * (widget.width / 100)),
        height: 55,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(widget.round),
          child: FlatButton(
            onPressed: widget.function,
            child: SizedBox(
              width: totalWidth,
              child: Row(
                children: [
                  if (widget.iconPath != null)
                    SvgPicture.asset(widget.iconPath,
                        width: widget.iconSize ?? 20,
                        height: widget.iconSize ?? 20,
                        color: widget.iconColor),
                  if (widget.iconPath != null) SizedBox(width: 20),
                  MeasureSize(
                    onChange: (size) {
                      setState(() {
                        totalWidth = size.width +
                            (widget.iconPath != null ? (30 + 20) : 0);
                      });
                    },
                    child: Text(
                      widget.text,
                      style: widget.textStyle.copyWith(
                          color: widget.textColor,
                          fontSize: widget.fontSize,
                          fontWeight: widget.isBold
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
            color: widget.color,
            shape: widget.borderColor == null
                ? RoundedRectangleBorder()
                : RoundedRectangleBorder(
                    side: BorderSide(
                        color: widget.borderColor,
                        width: widget.borderWidth ?? 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(widget.round)),
          ),
        ),
      );
    }*/
  }
}
