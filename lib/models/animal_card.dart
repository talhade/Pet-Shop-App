import 'package:flutter/cupertino.dart';
import 'package:pet_shop_ui/utils.dart';

class AnimalCard {
  final String title;
  final String icon;
  final Color color;

  AnimalCard(this.title, this.icon, this.color);
}

List<AnimalCard> animalCardList = [
  AnimalCard(
    'Cats',
    'assets/ic_cat.png',
    catColor,
  ),
  AnimalCard(
    'Dogs',
    'assets/ic_dog.png',
    dogColor,
  ),
  AnimalCard(
    'Birds',
    'assets/ic_fish.png',
    fishColor,
  ),
  AnimalCard(
    'Fishes',
    'assets/ic_bird.png',
    birdColor,
  ),
];
