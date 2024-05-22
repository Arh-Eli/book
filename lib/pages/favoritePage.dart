import 'package:flutter/material.dart';
import 'package:book/components/bookCard.dart';
import 'package:book/data/favorite.dart';
import 'package:book/pages/shopMain.dart';


class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Избранное'),
        actions: [
          IconButton(
            icon: Image.asset('assets/starF.png',width: 20.0, height: 20.0),
            tooltip: 'Open shopping cart',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ShopMain()),);
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
              childAspectRatio: 0.55,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8),
          itemCount: favoriteBooks.length,
          itemBuilder: (BuildContext context, int index)
          {
            return BookCard(id : favoriteBooks[index]);
          },

        ),
        //CountryCard(flag: countries[0].flag,name: countries[0].name,size: countries[0].square),
      ),
    );
  }
}