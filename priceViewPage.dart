import 'package:flutter/material.dart';

class priceViewPage extends StatelessWidget{
  final double price;
  priceViewPage(this.price);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Icon(Icons.attach_money,size: 20,),
        SizedBox(width: 3,),
        Text(price.toString(),style: TextStyle(fontSize: 20,color: Colors.black),),
      ],
    );
  }
  
}