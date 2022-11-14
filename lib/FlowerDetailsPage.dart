import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlowerDetailsPage extends StatefulWidget {
  String name, img;
  FlowerDetailsPage({Key? key, required this.name, required this.img})
      : super(key: key);

  @override
  State<FlowerDetailsPage> createState() => _FlowerDetailsPageState();
}

class _FlowerDetailsPageState extends State<FlowerDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 8, color: Colors.teal),
                ),
                height: 300,
                width: 300,
                child: Image.asset(widget.img)),
            Text(widget.name),
          ],
        )),
      ),
    );
  }
}
