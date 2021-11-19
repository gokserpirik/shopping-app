import 'package:flutter/material.dart';


class ProductPage extends StatefulWidget {
  const ProductPage({ Key? key }) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, title: Text("Top+Skirt Mix"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Image.asset("lib/assets/clothes.jpg", width:MediaQuery.of(context).size.width, fit: BoxFit.fitWidth,),
        SizedBox(height: 20,),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //* Fiyat ve isim
                SizedBox(width: MediaQuery.of(context).size.width*(.35)+25,child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Top + Skirt Mix", style: TextStyle(fontSize: 15),textAlign: TextAlign.left,),
                    Text("70€", style: TextStyle(color: Colors.black87, fontSize: 15), textAlign: TextAlign.left,),
                  ],
                ),),
                SizedBox(width: 20,),

                //*Add to cart button there
                SizedBox(width: MediaQuery.of(context).size.width*(.35)+25,child:
                Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Add to Cart",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
      ),
    ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Text("Description", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),),
          ],
        )
      ],) ,
    );
  }
}