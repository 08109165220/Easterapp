import 'package:flutter/material.dart';

import 'model/model.dart';


class detail extends StatefulWidget {
  const detail({Key? key, required this.productModel}) : super(key: key);
final ProductModel productModel;
  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar( title: Text(widget.productModel.productName)),
    body: Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(height: 250,width: MediaQuery.of(context).size.width,
          child: Image(image: AssetImage(widget.productModel.imageUrl),fit: BoxFit.fill),

        ),
        ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.productModel.offerdPrice,
             style: TextStyle(color: Colors.deepPurple,decoration: TextDecoration.lineThrough),
            ),
            Text(widget.productModel.price,style: TextStyle(color:Colors.black),)
          ],
        ),
      ),
      SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
children: [Text(" Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod"

            ),
        Text(" tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,"
      ),
  Text("quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo"
                ),
  Text(" consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse"
    ),
  Text("cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non"
    ),
  Text("proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    ],
    ),
          )
      ),
      SizedBox(height: 50,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            child: Text("click",style: TextStyle(color: Colors.deepOrangeAccent)),
            onPressed:(){} ),
      )
      ]
    ),

    )
    );
  }
}
