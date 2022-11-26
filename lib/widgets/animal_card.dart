import 'package:flutter/material.dart';
import 'package:pet_shop_ui/utils.dart';

class animalCard extends StatelessWidget {
  final String title;
  final String photoPath;
  final Color color;
  const animalCard({
    Key? key,
    required this.title,
    required this.photoPath,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 120,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(photoPath),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(title),
          ),
        ],
      ),
    );
  }
}
