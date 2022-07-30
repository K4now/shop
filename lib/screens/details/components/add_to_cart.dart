import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import 'package:shop/constans.dart';
import 'package:shop/provider/basket_provider.dart';
import 'package:shop/repositories/models/Product.dart';
import 'package:shop/screens/cart/cart_screen.dart';
import 'package:shop/screens/welcome/welcome_screen.dart';

class AddToCart extends StatelessWidget {
  final Product product;
  const AddToCart({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: [
          Expanded(
              //Кнопка "Купить сейчас"
              child: Container(
            decoration: BoxDecoration(border: Border.all()),
            height: 50,
            child: TextButton(
              child: Text(
                ('Добавить в корзину'),
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Товар добавлен в корзину')));
                var provider =
                    Provider.of<BusketProvider>(context, listen: false);
                provider.addBusket(product);
                ;
              },
            ),
          )),
        ],
      ),
    );
  }
}
