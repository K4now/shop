import 'package:flutter/material.dart';
import 'package:shop/constans.dart';
import 'package:shop/repositories/models/Product.dart';
import 'package:shop/screens/details/components/add_to_cart.dart';

import 'package:shop/screens/details/components/description.dart';
import 'package:shop/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  child: Column(
                    children: [
                      //Описание
                      Description(
                        product: product,
                      ),
                      SizedBox(height: kDefaultPaddin / 2),
                      //Прибавление кол-ва

                      SizedBox(height: kDefaultPaddin / 2),
                      //Добавление в корзину
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
