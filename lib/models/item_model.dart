import 'package:flutter/cupertino.dart';
import 'package:pet_shop_ui/utils.dart';

class Item {
  final String name;
  final String explanation;
  final String price;
  final Color color;
  final String imagePath;

  Item(this.name, this.explanation, this.price, this.color, this.imagePath);
}

List<Item> itemList = [
  Item(
    'Cuddler dog and cat bed',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer mattis congue lorem blandit porta. Sed lobortis vulputate eleifend. Donec rutrum sed sapien sed mattis.',
    '50',
    itemColor1,
    'assets/cat_bed.png',
  ),
  Item(
    'Cat and dog carrier',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer mattis congue lorem blandit porta. Sed lobortis vulputate eleifend. Donec rutrum sed sapien sed mattis.',
    '60',
    itemColor2,
    'assets/cat_carrier.png',
  ),
  Item(
    'Dog collar',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer mattis congue lorem blandit porta. Sed lobortis vulputate eleifend. Donec rutrum sed sapien sed mattis.',
    '10',
    itemColor3,
    'assets/dog_collor.png',
  ),
];
