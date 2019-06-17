import 'package:flutter/material.dart';
import 'imageViewPage.dart';
import 'priceViewPage.dart';

class goods_row extends StatelessWidget {
  final String title;
  final List<post> list;
  goods_row(this.title,this.list);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return Text("1");

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
          Text(title,style: TextStyle(fontSize: 15),),
          SizedBox(height: 20,),
          Container(
          height: 200,
          child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: list.length*2,
          itemBuilder: _listitemBuilder,
                 ),

          ),
      ],
    );

  }

  Widget _listitemBuilder(BuildContext context, int index) {
    int i=index ~/2;
    if(index.isEven){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          imageViewPage(list[i].imgurl),
          SizedBox(height: 16,),
          Row(
            children: <Widget>[
              Text(list[i].brand,style: TextStyle(fontStyle: FontStyle.italic,),),
              SizedBox(width: 10,),
              Text(list[i].name,),
            ],
          ),
          priceViewPage(list[i].price),
        ],
      );
    }else {
      return SizedBox(width: 30,);}


  }
}


class post {
  final String brand;
  final String name;
  final double price;
  final String imgurl;
  //const post(this.brand,this.name,this.price,this.imgurl);
  const post(
    this.brand,
    this.name,
    this.price,
    this.imgurl

  );
}
//ListView.builder(scrollDirection: Axis.horizontal, itemCount: list.length, itemBuilder: _listitemBuilder,);
