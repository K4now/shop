import 'package:flutter/material.dart';

class Product {
  final List<String> imageList;
  final String image, title, description;
  final int price, size, id;
  Product({
    required this.imageList,
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
  });
}

List<Product> products = [
  Product(
    id: 1,
    image: "assets/images/Slipsteam.jpg",
    title: "Slipsteam",
    price: 150,
    description:
        "Коллекция PUMA x PUMA – это синтез яркого прошлого и нашего смелого настоящего. Кроссовки PUMA x PUMA Slipstream Mid Trainers – свежий взгляд на версию 1987 года, вдохновленный влиянием баскетбола на моду как на спортивной площадке, так и за ее пределами. Итерацию отличают классные асимметричные блоки, эффектный сплошной принт на стельке, «архивный» логотип и кожаный верх.",
    size: 40,
    imageList: [
      "assets/images/Slipsteam.jpg",
      "assets/images/Slipsteam2.jpg",
      "assets/images/Slipsteam3.jpg",
      "assets/images/Slipsteam4.jpg"
    ],
  ),
  Product(
    id: 2,
    image: "assets/images/suede.jpg",
    title: "Suede",
    price: 200,
    description:
        "Созданная более десяти лет назад, известная своими бесконечными территориями и возможностями, игра Minecraft стала бестселлером среди видеоигр всех времен. Новая коллаборация PUMA x MINECRAFT вдохновлена уникальной игровой графикой. Характерные цвета, яркие геометрические принты, а также эргономичные детали, отвечающие за комфорт, – отличительные черты. Встречайте кеды Suede Minecraft Trainers.",
    size: 40,
    imageList: [
      "assets/images/suede.jpg",
      "assets/images/suede2.jpg",
      "assets/images/suede3.jpg",
      "assets/images/suede4.jpg",
    ],
  ),
  Product(
    id: 3,
    image: "assets/images/Supertec.jpg",
    title: "Supertec",
    price: 100,
    description:
        "Кроссовки Supertec Trainers отличает прочная, подходящая для тренировок конструкция из сетчатого материала и ЭВА. Отделка пятки термополиуретаном делает модель необычной. А еще, вы можете быть уверены, что комфорт обеспечен на протяжении всего дня – обувь оснащена стелькой SoftFoam+. Стильные кроссовки нового сезона – от PUMA. Подходят для мужчин и женщин.",
    size: 40,
    imageList: [
      "assets/images/Supertec.jpg",
      "assets/images/Supertec2.jpg",
      "assets/images/Supertec3.jpg",
      "assets/images/Supertec4.jpg",
    ],
  )
];
