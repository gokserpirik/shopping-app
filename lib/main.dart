import 'package:flutter/material.dart';
import 'package:animate_icons/animate_icons.dart';
import 'package:my_app/notf.dart';
import 'package:my_app/product.dart';
import 'package:my_app/search.dart';

//Controlling Link:
// https://dribbble.com/shots/15461206/attachments/7233123?mode=media

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AnimateIconController controller = AnimateIconController();
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          "Shopping Brand",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Welcome back dear!\n"),
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: AnimateIcons(
                startIcon: Icons.login,
                endIcon: Icons.done,
                size: 15.0,
                controller: controller,
                // add this tooltip for the start icon
                startTooltip: 'Icons.login',
                // add this tooltip for the end icon
                endTooltip: 'Icons.done',
                onStartIconPress: () {
                  print("Clicked on Add Icon");
                  Future.delayed(Duration(milliseconds: 700), () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ShoppingPage()));
                  });
                  return true;
                },
                onEndIconPress: () {
                  print("Clicked on Close Icon");
                  return true;
                },
                duration: Duration(milliseconds: 500),
                startIconColor: Colors.white,
                endIconColor: Colors.white,
                clockwise: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ShoppingPage extends StatelessWidget {
  
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Start Shopping"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  //* Search bar
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SearchPage()));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * (0.7),
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black12),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: "    ",
                                      style: TextStyle(color: Colors.black54)),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.search,
                                      size: 20,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  TextSpan(
                                      text: "    ",
                                      style: TextStyle(color: Colors.black54)),
                                  TextSpan(
                                      text: "Search for...",
                                      style: TextStyle(color: Colors.black54)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),

                  //* Ring Bell
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NotfPage()));
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black12),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.black54,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width * (0.7) + 70,
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "Free Shopping\nToday",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                      List.generate(category.length, (index) => catList(index)),
                ),
              ),

              SizedBox(height: 25,),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                // 0.35 ve 25 versem 20 spacing kalır
                //! Product 1
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductPage()));
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*(0.35) +25 ,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width:MediaQuery.of(context).size.width*(0.35) +10 ,
                          height: 150 ,
                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("lib/assets/clothes.jpg"), fit: BoxFit.fitWidth,), borderRadius: BorderRadius.circular(20))
                        ),
                        SizedBox(height: 3,),
                        Text("Top+Skirt Mix", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color:Colors.black54,),),
                        Text("70 €", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800,),),
                      
                    ],),
                  ),
                ),

                SizedBox(width: 20,),
                SizedBox(
                  width: MediaQuery.of(context).size.width*(0.35) +25 ,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width:MediaQuery.of(context).size.width*(0.35) +10 ,
                        height: 150 ,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("lib/assets/clothes.jpg"), fit: BoxFit.fitWidth,), borderRadius: BorderRadius.circular(20))
                      ),
                      SizedBox(height: 3,),
                      Text("Top+Skirt Mix", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color:Colors.black54,),),
                      Text("70 €", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800,),),
                    
                  ],),
                )
              ],),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                // 0.35 ve 25 versem 20 spacing kalır
                SizedBox(
                  width: MediaQuery.of(context).size.width*(0.35) +25 ,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width:MediaQuery.of(context).size.width*(0.35) +10 ,
                        height: 150 ,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("lib/assets/clothes.jpg"), fit: BoxFit.fitWidth,), borderRadius: BorderRadius.circular(20))
                      ),
                      SizedBox(height: 3,),
                      Text("Top+Skirt Mix", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color:Colors.black54,),),
                      Text("70 €", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800,),),
                    
                  ],),
                ),
                SizedBox(width: 20,),
                SizedBox(
                  width: MediaQuery.of(context).size.width*(0.35) +25 ,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width:MediaQuery.of(context).size.width*(0.35) +10 ,
                        height: 150 ,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("lib/assets/clothes.jpg"), fit: BoxFit.fitWidth,), borderRadius: BorderRadius.circular(20))
                      ),
                      SizedBox(height: 3,),
                      Text("Top+Skirt Mix", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color:Colors.black54,),),
                      Text("70 €", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800,),),
                    
                  ],),
                )
              ],),
            ],
          ),
        ),
      ),
    );
  }



  catList(index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.black12, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              category[index],
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ),
      ),
    );
  }
}

List category = [
  "Discounts",
  "Outlet",
  "Best Sellers",
  "Most Liked",
  "New",
  "Clothes",
  "Tech"
];
