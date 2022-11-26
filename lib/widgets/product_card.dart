import 'package:flutter/material.dart';
import 'package:pet_shop_ui/utils.dart';

class productCard extends StatefulWidget {
  final String name;
  final String explanation;
  final String price;
  final Color color;
  final String imagePath;
  const productCard({
    Key? key,
    required this.name,
    required this.explanation,
    required this.price,
    required this.color,
    required this.imagePath,
  }) : super(key: key);

  @override
  State<productCard> createState() => _productCardState();
}

class _productCardState extends State<productCard> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 213,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey,
        //     offset: Offset(0, 1.0),
        //     blurRadius: 10.0,
        //     spreadRadius: 0.10,
        //   ),
        // ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 120,
                  height: 100,
                  decoration: BoxDecoration(
                    color: widget.color,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(widget.imagePath),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  widget.name,
                  style: TextStyle(
                    color: textColorDark,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${widget.price}',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        _isClicked = !_isClicked;
                      });
                    },
                    icon: Icon(
                      _isClicked
                          ? Icons.favorite
                          : Icons.favorite_border_outlined,
                      color: _isClicked ? mainColor : Colors.grey[400],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
