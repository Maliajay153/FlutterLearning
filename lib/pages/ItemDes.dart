import 'package:flutter/material.dart';
class ItemDes extends StatefulWidget {
  const ItemDes({Key? key}) : super(key: key);

  @override
  State<ItemDes> createState() => _ItemDesState();
}

class _ItemDesState extends State<ItemDes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nav Durga Textile"),
      ),
      body: Center(
        child: Container(child: Text(" Thank you  for your interest",style: TextStyle(fontSize: 24,color: Colors.purple),),)
      ),
    );
  }
}
