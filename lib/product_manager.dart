import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  
  final String startingProduct;

  ProductManager({this.startingProduct = 'Sport Tester'}) {
    print('[ProductManager Widget] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager State] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print('[ProductManager State] initState()');
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);

    }
    super.initState();
  }
  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[ProductManager State] didUpdateWidget()');
    super.didUpdateWidget(oldWidget);
  }
  void _addPrduct(String product) {
    setState(() {
      _products.add(product);
      });


  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager State] build()');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addPrduct),
        ),
        Expanded( child : Products(_products),),
      ],
    );
  }
}
