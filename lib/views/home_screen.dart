// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:pet_shop_ui/models/animal_card.dart';
import 'package:pet_shop_ui/models/item_model.dart';
import 'package:pet_shop_ui/utils.dart';
import 'package:pet_shop_ui/views/item_details.dart';
import 'package:pet_shop_ui/widgets/widgets.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: DotNavigationBar(
        selectedItemColor: mainColor,
        unselectedItemColor: Colors.grey[400],
        currentIndex: _currentIndex,
        onTap: (p0) {
          setState(() {
            _currentIndex = p0;
          });
        },
        items: [
          DotNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          DotNavigationBarItem(
            icon: Icon(Icons.pets_rounded),
          ),
          DotNavigationBarItem(
            icon: Icon(Icons.favorite_border),
          ),
          DotNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          DotNavigationBarItem(
            icon: Icon(Icons.person),
          ),
        ],
      ),
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.jpg'),
              radius: 25,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //WELCOMING AND SEARCH BAR AREA
              searchBar(),
              //CATEGORIES
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        color: textColorDark,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //CARDS
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    child: ListView.builder(
                      itemCount: animalCardList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        AnimalCard card = animalCardList[index];
                        return Padding(
                          padding: index != animalCardList.length - 1
                              ? const EdgeInsets.only(right: 14.0)
                              : const EdgeInsets.only(right: 0.0),
                          child: animalCard(
                              title: card.title,
                              photoPath: card.icon,
                              color: card.color),
                        );
                      },
                    ),
                  ),
                ],
              ),
              //POPULAR PRODUCTS
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  'Popular Products',
                  style: TextStyle(
                    color: textColorDark,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 213,
                child: ListView.builder(
                  itemCount: itemList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Item product = itemList[index];
                    return Padding(
                      padding: index != animalCardList.length - 1
                          ? const EdgeInsets.only(right: 14.0)
                          : const EdgeInsets.only(right: 0.0),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ItemDetails(item: product))),
                        child: productCard(
                            name: product.name,
                            explanation: product.explanation,
                            price: product.price,
                            color: product.color,
                            imagePath: product.imagePath),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
