import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  bool fav;
  final String imageUrl;
  final String productName;
  final String price;
  final String offerdPrice;
   ItemCard({Key? key, required this.fav, required this.imageUrl, required this.productName, required this.price, required this.offerdPrice}) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(

        shadowColor: Colors.amber,
        elevation: 5,
        child: GridTile(
          header: Container(
            height: 40,
            color: Colors.black.withOpacity(0.4),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    /// this is a lambda expression in dart function
                      onPressed: () => setState(() => widget.fav = !widget.fav)
                      ,
                      icon: widget.fav == true
                          ? Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                          : Icon(
                        Icons.favorite_border_rounded,
                        color: Colors.white,
                      )),
                  SizedBox(
                    width: 20,
                  )
                ]),
          ),
          footer: Container(
            height: 40,
            color: Colors.black.withOpacity(0.7),
            child: Column(children: [
              Text(
             widget.productName,
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      widget.price,
                      style: TextStyle(color: Colors.white60,decoration: TextDecoration.lineThrough,),

                    ),   Text(
                      widget.offerdPrice,
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
              )
            ]),
          ),
          child: Image.asset(
           widget.imageUrl,
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
