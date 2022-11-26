import 'package:flutter/material.dart';
import 'package:pet_shop_ui/models/item_model.dart';
import 'package:pet_shop_ui/utils.dart';

import '../widgets/widgets.dart';

class ItemDetails extends StatefulWidget {
  final Item item;
  const ItemDetails({super.key, required this.item});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    var boxShadow2 = [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 18.0,
        spreadRadius: 2.0,
        blurStyle: BlurStyle.normal,
        offset: Offset(1, 1),
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.4,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                        color: widget.item.color,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Image.asset(widget.item.imagePath),
                      ),
                    ),
                  ],
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //BACK BUTTON
                        GestureDetector(
                          onTap: (() => Navigator.pop(context)),
                          child: baseButton(
                            icon: Icons.arrow_back_ios_new,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        //COLOR CHOICE & FAV BUTTON
                        Column(
                          children: [
                            colorArea(
                              boxShadow2: boxShadow2,
                              itemColor: widget.item.color,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            GestureDetector(
                              onTap: (() {
                                setState(() {
                                  isClicked = !isClicked;
                                });
                              }),
                              child: baseButton(
                                icon: Icons.favorite_border,
                                color: isClicked
                                    ? mainColor
                                    : Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.item.name,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14.0),
                    child: Text(
                      widget.item.explanation,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    'Images',
                    style: TextStyle(
                      color: textColorDark,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        imageSquare(widget: widget),
                        imageSquare(widget: widget),
                        imageSquare(widget: widget),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Price:',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '\$${widget.item.price}',
                            style: TextStyle(
                              color: textColorDark,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                              color: mainColor,
                              borderRadius: BorderRadius.circular(16.0),
                              boxShadow: [
                                BoxShadow(
                                  color: mainColor,
                                  blurRadius: 5.0,
                                  spreadRadius: 0.1,
                                  blurStyle: BlurStyle.normal,
                                  offset: Offset(1, 1),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'Add to cart',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class imageSquare extends StatelessWidget {
  const imageSquare({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final ItemDetails widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10.0, 0),
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: widget.item.color,
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );
  }
}
