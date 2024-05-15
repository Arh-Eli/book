import 'package:flutter/material.dart';
import 'package:book/data/bookData.dart';

class BookCard extends StatelessWidget{
  const BookCard({super.key,required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Container(
        padding: const EdgeInsets.all(8),
        constraints: const BoxConstraints(maxWidth: 624),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(books[id].listPhoto[id]),
            Text(books[id].price.toString() + "р."),
            Text(books[id].name),
            Text(books[id].author),

            Row(
              children:[
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFC6B1FF),
                      foregroundColor: Colors.black87,
                    ),
                    child: const Text('К'),
                    onPressed: (){}
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFC6B1FF),
                      foregroundColor: Colors.black87,
                    ),
                    child: const Text('И'),
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