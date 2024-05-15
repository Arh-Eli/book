import 'package:flutter/material.dart';
import 'package:book/components/bookCard.dart';
import 'package:book/data/bookData.dart';

class ShopMain extends StatelessWidget {
  const ShopMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('лучшие из лучших'),
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 0.55,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8),
          itemCount: 10/*books.length*/,
          itemBuilder: (BuildContext context, int index)
          {
            return BookCard(id : 0);
          },

        ),
        //CountryCard(flag: countries[0].flag,name: countries[0].name,size: countries[0].square),
      ),
    );
  }
}