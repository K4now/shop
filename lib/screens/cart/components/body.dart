import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/provider/basket_provider.dart';
import 'package:shop/screens/cart/components/product_to_cart.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BusketProvider>(context, listen: false);
    if (provider.busketItem.length > 0) {
      return Product_to_cart();
    } else {
      return Text("Корзина пуста", style: TextStyle(fontSize: 50));
    }
  }
}
