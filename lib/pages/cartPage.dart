import 'package:flutter/material.dart';
import 'package:book/components/cartCard.dart';
import 'package:book/pages/favoritePage.dart';
import 'package:book/data/favorite.dart';


class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
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
              // handle the press
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
          itemCount: booksToBy.length,
          itemBuilder: (BuildContext context, int index)
          {
            return CartCard(id : index);
          },

        ),
        //CountryCard(flag: countries[0].flag,name: countries[0].name,size: countries[0].square),
      ),
    );
  }
}