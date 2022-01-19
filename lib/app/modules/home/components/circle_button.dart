import 'package:flutter/material.dart';
import 'package:saborosa_app/app/core/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleButton extends StatelessWidget {
  final Function() onTap;
  final String image;
  final Color? bgColor;
  final Color? iconColor;
  final double? size;

  const CircleButton({
    Key? key,
    this.iconColor,
    this.bgColor,
    this.size,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size ?? 50,
        width: size ?? 50,
        padding: EdgeInsets.all(size != null ? 8 : 15),
        decoration: BoxDecoration(
            color: bgColor ?? white,
            shape: BoxShape.circle,
            boxShadow: const [
              BoxShadow(
                color: blackShadow,
                blurRadius: 10,
                offset: Offset(0, 5),
              )
            ]),
        child: SvgPicture.asset(
          "assets/icons/$image",
          color: iconColor ?? grayColor,
        ),
      ),
    );
  }
}
