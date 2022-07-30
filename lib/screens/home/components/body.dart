import 'package:flutter/material.dart';
import 'package:shop/constans.dart';
import 'package:shop/repositories/models/Product.dart';
import 'package:shop/screens/details/detail_screen.dart';
import 'package:shop/screens/home/components/item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          //Отрисовка товаров на главной
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //Кол-во товаров в столбик
              crossAxisCount: 1,
              mainAxisSpacing: kDefaultPaddin,
              crossAxisSpacing: kDefaultPaddin,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (context, index) => ItemCard(
                product: products[index],
                //При нажатии переносит на индекс продукта
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(product: products[index])))),
          ),
        ))
      ],
    );
  }
}
