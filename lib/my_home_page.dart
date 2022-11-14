import 'package:flower_details/FlowerDetailsPage.dart';
import 'package:flutter/material.dart';

List<String> flowerNameList = [
  "Rose",
  "Marigold",
  "Water Lily",
  "Sunflower",
  "Lotus",
  "Tulip",
  "China rose"
];

List<String> flowerImageList = [
  "assets/image/image1.jpg",
  "assets/image/image2.jpg",
  "assets/image/image3.jpg",
  "assets/image/image4.jpg",
  "assets/image/image5.jpg",
  "assets/image/image6.jpg",
  "assets/image/image7.jpg",
];

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text("Flowers"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: flowerNameList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(top: 12, left: 20, right: 20),
                    child: Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Colors.teal),
                        child: Center(
                            child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FlowerDetailsPage(
                                          name: flowerNameList[index],
                                          img: flowerImageList[index],
                                        )));
                          },
                          child: Text(
                            flowerNameList[index],
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ))),
                  );
                }),
          )
        ],
      ),
    );
  }
}
