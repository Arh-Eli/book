import 'package:flutter/material.dart';

class BookData {
  int id;
  String name;
  double price;
  String author;
  List<String> listPhoto;
  int quantity;

  BookData(this.id, this.name, this.price, this.author, this.listPhoto,this.quantity);

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
  BookData(0, "Лес", 535.57, "Светлана Тюльбашева",
      ["https://content.img-gorod.ru/nomenclature/30/325/3032550-3.jpg?width=304&height=438&fit=bounds",
      "https://content.img-gorod.ru/nomenclature/30/325/3032550_2-3.jpg?width=0&height=2400&fit=bounds",
      "https://content.img-gorod.ru/nomenclature/30/325/3032550_3-3.jpg?width=0&height=2400&fit=bounds"],0),
  BookData(1, "Karmalogic", 2249, "Алексей Ситников",
      ["https://content.img-gorod.ru/nomenclature/26/309/2630993_1.jpg?width=0&height=2400&fit=bounds",
        "https://content.img-gorod.ru/nomenclature/26/309/2630993_2.jpg?width=0&height=2400&fit=bounds",
        "https://content.img-gorod.ru/nomenclature/26/309/2630993_4.jpg?width=0&height=2400&fit=bounds"],0),
  BookData(2, "Любовь между нами", 711, "Сью Ники",
      ["https://content.img-gorod.ru/nomenclature/30/356/3035605-4.jpg?width=0&height=2400&fit=bounds",
        "https://content.img-gorod.ru/nomenclature/30/356/3035605_1-4.jpg?width=0&height=2400&fit=bounds",
        "https://content.img-gorod.ru/nomenclature/30/356/3035605_3-4.jpg?width=0&height=2400&fit=bounds"],0),
  BookData(3, "Возрождение", 1063, "Стивен Кинг",
      ["https://content.img-gorod.ru/nomenclature/30/389/3038903-2.jpg?width=0&height=2400&fit=bounds",
        "https://content.img-gorod.ru/nomenclature/30/389/3038903_1-2.jpg?width=0&height=2400&fit=bounds",
        "https://content.img-gorod.ru/nomenclature/30/389/3038903_3-2.jpg?width=0&height=2400&fit=bounds"],0),
  BookData(4, "В Питере НЕжить", 999, "Арден Лия, Крейн Антонина",
      ["https://content.img-gorod.ru/nomenclature/30/357/3035743-4.jpg?width=0&height=2400&fit=bounds",
        "https://content.img-gorod.ru/nomenclature/30/357/3035743_2-4.jpg?width=0&height=2400&fit=bounds",
        "https://content.img-gorod.ru/nomenclature/30/357/3035743_5-4.jpg?width=0&height=2400&fit=bounds"],0),
  BookData(5, "До инкала", 2532, "Ходоровски Алехандро",
      ["https://content.img-gorod.ru/nomenclature/30/157/3015731_2-5.jpg?width=0&height=2400&fit=bounds",
        "https://content.img-gorod.ru/nomenclature/30/157/3015731_3-5.jpg?width=0&height=2400&fit=bounds",
        "https://content.img-gorod.ru/nomenclature/30/157/3015731_10-5.jpg?width=0&height=2400&fit=bounds"],0)
];