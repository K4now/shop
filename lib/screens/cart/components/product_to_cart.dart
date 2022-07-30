import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/provider/basket_provider.dart';
import 'package:shop/repositories/models/Product.dart';
import 'package:shop/screens/details/detail_screen.dart';

import '../../../constans.dart';

class Product_to_cart extends StatelessWidget {
  const Product_to_cart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cart = context.watch<BusketProvider>();

    return Container(
      child: ListView.builder(
          itemCount: cart.busketItem.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                //срабатывает нажатие и переход на страницу товара

                child: Container(
              margin: EdgeInsets.all(kDefaultPaddin),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Column(
                children: [
                  Container(
                    height: kDefaultPaddin * 8,
                    child: Row(children: [
                      Column(
                        children: [
                          IconButton(
                              onPressed: () {
                                var provider = Provider.of<BusketProvider>(
                                    context,
                                    listen: false);
                                cart.deleteBusket(cart.busketItem[index]);
                              },
                              icon: Icon(
                                Icons.delete_forever,
                              )),
                          Container(
                              height: kDefaultPaddin * 5,
                              child: Image.asset(cart.busketItem[index].image)),
                        ],
                      ),
                      SizedBox(width: kDefaultPaddin),
                      Column(
                        children: [
                          SizedBox(
                            height: kDefaultPaddin,
                          ),
                          Text(
                            cart.busketItem[index].title,
                            style: TextStyle(fontSize: 25),
                          ),
                          SizedBox(
                            height: kDefaultPaddin / 2,
                          ),
                          Text(
                            "Размер ${cart.busketItem[index].size}",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: kDefaultPaddin / 2,
                          ),
                          Text(
                            "Цена ${cart.busketItem[index].price} \$",
                            style: TextStyle(fontSize: 25),
                          )
                        ],
                      )
                    ]),
                  ),
                ],
              ),
            ));
          }),
    );
  }
}
