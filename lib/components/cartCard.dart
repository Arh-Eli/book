import 'package:flutter/material.dart';
import 'package:book/data/bookData.dart';
import 'package:book/data/favorite.dart';

class CartCard extends StatefulWidget{



  CartCard({super.key,required this.id/*,this.starType}*/});

  //String starType;
  final int id;

  @override
  _BookCardState createState() => _BookCardState();
}

class _BookCardState extends State<CartCard>
{
  String starType = 'assets/star.png';

  @override
  Widget build(BuildContext context) {

    if (favoriteBooks.contains(widget.id))
    {
      starType = 'assets/starF.png';
    }
    else{
      starType = 'assets/star.png';
    }
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Container(
        padding: const EdgeInsets.all(8),
        constraints: const BoxConstraints(maxWidth: 624),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(books[widget.id].listPhoto[0]),
            Text(books[widget.id].price.toString() + "р."),
            Text(books[widget.id].name),
            Text(books[widget.id].author),

            Row(
                children:[
                  IconButton(
                    iconSize: 22,
                    icon: const Icon(Icons.remove),
                    onPressed: () {
                      if(books[widget.id].quantity > 0) {
                        books[widget.id].quantity -= 1;
                        setState(() {});
                      }
                    },
                  ),
                  Text(books[widget.id].quantity.toString()),
                  IconButton(
                    iconSize: 22,
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      if(books[widget.id].quantity > 0) {
                        books[widget.id].quantity += 1;
                        setState(() {});
    }
                    },
                  ),
                ]
            ),
          ],
        ),
      ),
    );
  }
}