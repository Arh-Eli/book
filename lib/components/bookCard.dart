import 'package:flutter/material.dart';
import 'package:book/data/bookData.dart';
import 'package:book/data/favorite.dart';

class BookCard extends StatefulWidget{



   BookCard({super.key,required this.id/*,this.starType}*/});

  //String starType;
  final int id;

  @override
  _BookCardState createState() => _BookCardState();
}

  class _BookCardState extends State<BookCard>
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
            Image.network(books[widget.id].listPhoto[widget.id]),
            Text(books[widget.id].price.toString() + "р."),
            Text(books[widget.id].name),
            Text(books[widget.id].author),

            Row(
              children:[
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFC6B1FF),
                      foregroundColor: Colors.black87,
                    ),
                    child: Image.asset(starType,width: 20.0, height: 20.0),
                    onPressed: (){
                      setState(() {
                        if (favoriteBooks.contains(widget.id)) {
                          favoriteBooks.remove(widget.id);
                          starType = 'assets/star.png';
                        }
                        else {
                          favoriteBooks.add(widget.id);
                          starType = 'assets/starF.png';
                        }
                      });
                    }

                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFC6B1FF),
                      foregroundColor: Colors.black87,
                    ),
                    child: Image.asset('assets/cart.png',width: 20.0, height: 20.0),
                    onPressed: (){}
                ),
              ]
            ),
        ],
      ),
    ),
    );
  }
}