import 'package:flutter/material.dart';
import 'package:saborosa_app/app/core/color.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final double height;

  const RoundButton({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: Text(
            text,
            style:  TextStyle(
              fontSize: fontSize,
              color: white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
