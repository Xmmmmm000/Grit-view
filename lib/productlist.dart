import 'package:flutter/material.dart';
class CartProduct extends StatelessWidget {
  const CartProduct({Key? key, required this.name_product1, required this.photo_path1, required this.desciption_product1, required this.id_product1, required this.price_prpduct1}) : super(key: key);
  final String name_product1;
  final String photo_path1;
  final String desciption_product1;
  final double price_prpduct1;
  final int id_product1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name_product1,
            style: TextStyle(fontSize: 20, color: Colors.red[900]),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8) ,
          children: <Widget>[
            Container(
              child: Image.network('${photo_path1}'),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8),
              child: Text('Артикул: ${id_product1.toString()}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8),
              child: Text('Полное название продукта: ${name_product1}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8),
              child: Text('Описание товара: ${desciption_product1}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8),
              child: Text('Цена товара: ${price_prpduct1.toString()}', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            ),
          ],

        )
    );
  }
}