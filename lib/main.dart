import 'package:flutter/material.dart';
import 'package:untitled3/proc/file.dart';
import 'package:untitled3/productlist.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Text('Отечественный автопром ',
          style: TextStyle
            (fontSize: 15, color: Colors.black26, fontWeight: FontWeight.bold
          ),

        ),
        centerTitle: true,
      ),
      body: GridView.builder(
          itemCount: productList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.670
          ),
          itemBuilder: (BuildContext context, int index){
            return CartProduct(id_product1: productList[index].id, name_product1: productList[index].name, photo_path1: productList[index].photo, desciption_product1: productList[index].complex, price_prpduct1: productList[index].cost);
          }
      ),

    );
  }
}