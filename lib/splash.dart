import 'package:flutter/material.dart';
import 'package:hotstar/firstpage.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        color: Colors.blue[900],
        child: Image(
          image: AssetImage("myimages/img_61.png"),
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    gonext();
  }

  gonext() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return firstpage();
      },
    ));
  }
}
