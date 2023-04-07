import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detail.dart';
import 'itemCard.dart';
import 'model/model.dart';

class DashBoard extends StatefulWidget {
  var gridview;

   DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  bool fav = false;
 bool isListView=true;

  List<ProductModel> productList = [
    ProductModel(
        fav: false,
        imageUrl: "asset/products/pexels-riccardo-300857.jpg",
        productName: "poppy",
        price: "\$love",
        description:"major general",
        offerdPrice: "\$like"
    ),
    ProductModel(
        fav: true,
        imageUrl: "asset/products/pexels-pixabay-372166.jpg",
        productName: "picky",
        price: "\$love",
        description:"major general",
        offerdPrice: "\$like"),
    ProductModel(
        fav: false,
        imageUrl: "asset/products/pexels-boris-manev-998708.jpg",
        productName: "candy",
        price: "\$love",
        description:"major general",
        offerdPrice: "\$like"),
    ProductModel(
        fav: false,
        imageUrl: "asset/products/pexels-leeloo-thefirst-6487189.jpg",
        productName: "lucky",
        price: "\$love",
        description:"major general",
        offerdPrice: "\$like"),
    ProductModel(
        fav: true,
        imageUrl: "asset/products/pexels-leeloo-thefirst-6495863.jpg",
        productName: "pop",
        price: "\$love",
        description:"major general",
        offerdPrice: "\$like"),
    ProductModel(
        fav: false,
        imageUrl: "asset/products/pexels-oliver-wiesenberg-65764.jpg",
        productName: "mino",
        price: "\$love",
        description:"major general",
        offerdPrice: "\$like"),
    ProductModel(
        fav: true,
        imageUrl: "asset/products/pexels-photomix-company-96603.jpg",
        productName: "bestie",
        price: "\$love",
        description:"major general",
        offerdPrice: "\$like"),
    ProductModel(
        fav: false,
        imageUrl: "asset/products/pexels-cottonbro-studio-3972013.jpg",
        productName: "egg",
        price: "\$love",
        description:"major general",
        offerdPrice: "\$like"),
    ProductModel(
        fav: true,
        imageUrl: "asset/products/pexels-boris-manev-998708.jpg",
        productName: "nike",
        price: "\$love",
        description:"major general",
        offerdPrice: "\$like"),
    ProductModel(
        fav: false,
        imageUrl: "asset/products/pexels-pixabay-372166.jpg",
        productName: "best",
        price: "\$love",
        description:"major general",
        offerdPrice: "\$like")
  ];



  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Card(
                    elevation: 3,
                    shadowColor: Colors.amber,
                    color: Colors.white,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage("asset/products/pexels-pixabay-372166.jpg"),
                          ),
                          Text(
                            "ICEHUB",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 100,),
                          IconButton(
                              icon: Icon(Icons.list), onPressed: () {  setState(() => isListView=true); },),
                          SizedBox(width: 10,),
                          IconButton(
                            icon: Icon(Icons.grid_on_outlined), onPressed: () {  setState(() => isListView=false); },),

                        ]),
                  )),
              Expanded(

                child:isListView==true?ListView.builder(
                  itemCount: 200,

                  itemBuilder:   (context, index) =>Card(
                    elevation: 3,
                    shadowColor: Colors.amber,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("asset/products/pexels-riccardo-300857.jpg"),
                    ),
                    Text(
                      "ice intern",
                      style: TextStyle(fontWeight: FontWeight.bold),

                    ),
SizedBox(width: 90,),
                      Text(" GENERAL")
                    ]
                    ),

                  )): GridView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: productList.length,

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20),

                    itemBuilder: (context, index) => InkWell(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return detail(productModel: ProductModel(fav:  productList[index].fav,
                            imageUrl:  productList[index].imageUrl,
                            productName: productList[index].productName,
                            price:productList[index].price,
                            offerdPrice:productList[index].offerdPrice ,
                            description:productList[index]. description ),);
                      },));
                    },
                        child: ItemCard(fav: productList[index].fav, imageUrl: productList[index].imageUrl, productName: productList[index].productName, price: productList[index].price, offerdPrice: productList[index].offerdPrice))

                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
