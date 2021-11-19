import 'package:flutter/material.dart';

class NotfPage extends StatefulWidget {
  const NotfPage({ Key? key }) : super(key: key);

  @override
  _NotfPageState createState() => _NotfPageState();
}

class _NotfPageState extends State<NotfPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.8),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Notifications",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(5, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical:10),
              child: Container(width: MediaQuery.of(context).size.width*(0.8),
              height:60,
              decoration: BoxDecoration(color: Colors.black87,
              borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  Icon(Icons.shopping_bag_outlined, color: Colors.white,),
                  SizedBox(width: 8,),
                  Text("New Deals and Discounts!", style: TextStyle(color: Colors.white, fontSize: 18, 
                  fontWeight: FontWeight.w600),)
                ],
              ),
              ),
            );
          }),
        ),
      ),
    );
  }
}