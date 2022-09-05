import 'package:flutter/material.dart';
import 'package:hotstar/Model.dart';
import 'package:hotstar/thirdpage.dart';

class secondpage extends StatefulWidget {
  int index;

  secondpage(this.index);

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  List<String> temp = [];

  @override
  void initState() {
    super.initState();
    if (widget.index == 0) {
      temp = Model().images;
    } else if (widget.index == 1) {
      temp = Model().showimages;
    } else if (widget.index == 2) {
      temp = Model().kids;
    } else if (widget.index == 3) {
      temp = Model().PopularMovies;
    } else if (widget.index == 4) {
      temp = Model().MultiplexMovies;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("second page"),
        ),
        body: Container(
          color: Colors.black,
          child: GridView.builder(
            itemBuilder: (context, index) {
              return Container(
                height: 200,
                width: 150,
                margin: EdgeInsets.all(5),
                color: Colors.black,
                child: InkWell(onTap: () {
                      Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) {
                        return thirdpage(index,temp);
                      },));
                },
                  child: Container(
                    height: 200,
                    width: 200,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              Model().images[index],
                            ),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(12)),

                  ),),
              );
            },
            itemCount: temp.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.9,
              mainAxisSpacing: 1
            ),
          ),
        ));
  }
}
