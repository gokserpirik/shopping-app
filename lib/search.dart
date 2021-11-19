import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.8),
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(.2),
        title: Text(
          "Search",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * (0.5),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'What are you looking for?'),
                )),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // 0.35 ve 25 versem 20 spacing kalır
                  SizedBox(
                    width: MediaQuery.of(context).size.width * (0.35) + 25,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width:
                                MediaQuery.of(context).size.width * (0.35) + 10,
                            height: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("lib/assets/clothes.jpg"),
                                  fit: BoxFit.fitWidth,
                                ),
                                borderRadius: BorderRadius.circular(20))),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Top+Skirt Mix",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "70 €",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * (0.35) + 25,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width:
                                MediaQuery.of(context).size.width * (0.35) + 10,
                            height: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("lib/assets/clothes.jpg"),
                                  fit: BoxFit.fitWidth,
                                ),
                                borderRadius: BorderRadius.circular(20))),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Top+Skirt Mix",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "70 €",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
