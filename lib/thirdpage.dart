import 'package:flutter/material.dart';
import 'package:hotstar/Model.dart';

class thirdpage extends StatefulWidget {
  int index;
  List<String> temp;

  thirdpage(this.index, this.temp);

  @override
  State<thirdpage> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Third Page")),
        body: Container(
          margin: EdgeInsets.all(10),
          color: Colors.black,
          child: InkWell(
            onTap: () {},
            child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Image(
                  image: AssetImage(widget.temp[widget.index]),
                  fit: BoxFit.contain,
                )),
          ),
        ));
  }
}
