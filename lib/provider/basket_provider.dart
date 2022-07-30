import 'package:flutter/cupertino.dart';
import 'package:shop/repositories/models/Product.dart';

class BusketProvider extends ChangeNotifier {
  late Product _catalog;

  List<Product> busketItem = [];

  Product get catalog => _catalog;

  set catalog(Product newCatalog) {
    _catalog = newCatalog;

    notifyListeners();
  }

  addBusket(Product item) {
    busketItem.add(item);

    print(busketItem.toString());
    print(busketItem[busketItem.length - 1].id);
    notifyListeners();
  }

  deleteBusket(Product itemT) {
    for (int i = 0; i < busketItem.length; i++) {
      if (busketItem[i] == itemT) {
        busketItem.removeAt(i);
        print(busketItem.length);
        break;
      }
    }
    notifyListeners();
  }

  removeBusket(int index) {
    busketItem.clear();
    notifyListeners();
  }
}
