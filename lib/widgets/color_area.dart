import 'package:flutter/material.dart';
import 'package:pet_shop_ui/utils.dart';

class colorArea extends StatelessWidget {
  final Color itemColor;
  const colorArea({
    Key? key,
    required this.boxShadow2,
    required this.itemColor,
  }) : super(key: key);

  final List<BoxShadow> boxShadow2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14.0),
          color: Colors.white,
          boxShadow: boxShadow2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: itemColor == itemColor1 ? 25 : 15,
            height: itemColor == itemColor1 ? 25 : 15,
            decoration: BoxDecoration(
              color: itemColor1,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            width: itemColor == itemColor2 ? 25 : 15,
            height: itemColor == itemColor2 ? 25 : 15,
            decoration: BoxDecoration(
              color: itemColor2,
              shape: BoxShape.circle,
            ),
          ),
          Container(
            width: itemColor == itemColor3 ? 25 : 15,
            height: itemColor == itemColor3 ? 25 : 15,
            decoration: BoxDecoration(
              color: itemColor3,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
