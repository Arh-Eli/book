import 'package:flutter/material.dart';
import 'package:book/components/bookCard.dart';
import 'package:book/pages/favoritePage.dart';
import 'package:book/data/bookData.dart';
import 'package:book/pages/cartPage.dart';


class ShopMain extends StatelessWidget {
  const ShopMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ассортимент'),
        actions: [
          IconButton(
            icon: Image.asset('assets/star.png',width: 20.0, height: 20.0),
            tooltip: 'Open shopping cart',
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FavoritePage()),);
            },
          ),
          IconButton(
            icon: Image.asset('assets/cart.png',width: 20.0, height: 20.0),
            tooltip: 'Open shopping cart',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartPage()),);
            },
          ),
        ],
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.45,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8),
          itemCount: books.length,
          itemBuilder: (BuildContext context, int index)
          {
            return BookCard(id : index);
          },

        ),
        //CountryCard(flag: countries[0].flag,name: countries[0].name,size: countries[0].square),
      ),
    );
  }
}