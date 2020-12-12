import 'package:flutter/material.dart';

class FeatureSlideDot extends StatelessWidget {
  bool isActive;
  FeatureSlideDot(this.isActive);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 12 : 8,
      width: isActive ? 12 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.green : Colors.white,
        border: isActive ? Border.all(color: Colors.green) : Border.all(color: Colors.green),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
