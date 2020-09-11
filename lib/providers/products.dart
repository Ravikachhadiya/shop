import 'package:flutter/cupertino.dart';
import './product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
        id: 'p2',
        title: 'Trousers',
        description: 'A nice pair of trousers.',
        price: 59.99,
        imageUrl:
            'https://images-na.ssl-images-amazon.com/images/I/81t1RJtrHDL._UL1500_.jpg'),
  ];

  List<Product> get items {
    return [..._items];
  }

   Product findById(String id){
     return _items.firstWhere((prod) => prod.id == id);
   }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
