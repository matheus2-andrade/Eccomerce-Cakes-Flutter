import 'package:flutter/material.dart';

class MiniButton extends StatelessWidget {
 
  final Color bgColor;
  final Color iconColor;
  final IconData icon;

  const MiniButton({
    Key? key,
    required this.icon,
    required this.bgColor,
    
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: bgColor,
      radius: 12,
      child: Icon(
        icon,
        color: iconColor,
        size: 15,
      ),
    );
  }
}
