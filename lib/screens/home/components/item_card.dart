import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/provider/basket_provider.dart';
import 'package:shop/repositories/models/Product.dart';
import 'package:shop/constans.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ItemCard({Key? key, required this.product, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //срабатывает нажатие и переход на страницу товара
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black)),
        child: Column(
          children: [
            Expanded(
                child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image),
              ),
            )),
            Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
              child: Text(
                //Название товара
                product.title,
                style: TextStyle(color: Colors.black, fontSize: 45),
              ),
            ),
            //Кенопка купить и цена
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(kDefaultPaddin / 4),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: TextButton(
                        child: Text(
                          ('Купить сейчас'),
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Товар добавлен в корзину')));
                          var provider = Provider.of<BusketProvider>(context,
                              listen: false);
                          provider.addBusket(product);
                          ;
                        },
                      ),
                    ),
                  ),
                  Text(
                    "\$${product.price}",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
