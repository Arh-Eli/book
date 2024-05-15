import 'package:flutter/material.dart';

class BookData {
  int id;
  String name;
  double price;
  String author;
  List<String> listPhoto;

  BookData(this.id, this.name, this.price, this.author, this.listPhoto);

  List<Widget> GetListOfPhoto(){

    List<Widget> pages = [];

    for(int i = 0; i < listPhoto.length; i++)
    {
      pages.add(Image.network(listPhoto[i]));
    }


    return pages;
  }
}

List<BookData> books = [
  BookData(1, "Лес", 535.57, "Светлана Тюльбашева",
      ["https://content.img-gorod.ru/nomenclature/30/325/3032550-3.jpg?width=304&height=438&fit=bounds",
      "https://content.img-gorod.ru/nomenclature/30/325/3032550_2-3.jpg?width=0&height=2400&fit=bounds",
      "https://content.img-gorod.ru/nomenclature/30/325/3032550_3-3.jpg?width=0&height=2400&fit=bounds"])
];