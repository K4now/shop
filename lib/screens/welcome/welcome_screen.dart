import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/provider/basket_provider.dart';
import 'package:shop/screens/cart/cart_screen.dart';
import 'package:shop/screens/home/home_screen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _title = "Главная";

  int _selectedIndex = 0;
  @override
  List pages = [HomeScreen(), CartPage()];
  Widget build(BuildContext context) {
    var cart = context.watch<BusketProvider>();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            _title,
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            if (_title == "Корзина")
              IconButton(
                icon: const Icon(Icons.delete),
                color: Colors.black,
                onPressed: () {
                  var provider =
                      Provider.of<BusketProvider>(context, listen: false);
                  cart.removeBusket(cart.busketItem.length);
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Корзина очищена')));
                },
              )
          ],
        ),
        //Нижняя часть для навигации в приложении
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              //Переход на главную
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Главная',
              ),
              //Переход в корзину
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: "Корзина",
              ),
            ],
            unselectedItemColor: Colors.black,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped),
        body: pages[_selectedIndex]);
  }

//При нажатии появляется выбранная страница
  void _onItemTapped(int index) {
    setState(() {
      switch (index) {
        case 0:
          {
            _title = 'Главная';
          }
          break;
        case 1:
          {
            _title = 'Корзина';
          }
          break;
      }
      this._selectedIndex = index;
    });
  }
}
