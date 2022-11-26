import 'package:flutter/material.dart';

class baseButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  const baseButton({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 18.0,
            spreadRadius: 2.0,
            blurStyle: BlurStyle.normal,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}
