import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hotstar/Model.dart';
import 'package:hotstar/secondpage.dart';

class firstpage extends StatefulWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            CarouselSlider(
              options: CarouselOptions(height: 200,autoPlay: true,viewportFraction: 0.9),
              items: ["myimages/img_53.png","myimages/img_54.png","myimages/img_55.png","myimages/img_56.png","myimages/img_57.png",].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color: Colors.black
                        ),
                        child: Image(image: AssetImage(i),fit: BoxFit.fill)
                    );
                  },
                );
              }).toList(),
            ),
            Container(
              color: Colors.black,
              child: Column(
                children: [
                  // Container(
                  //   height: 200,
                  //   color: Colors.black,
                  //   margin: EdgeInsets.all(5),
                  //   alignment: Alignment.center,
                  // ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      // width: double.infinity,
                      color: Colors.black,
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.all(5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) {
                              return secondpage(0);
                            },
                          ));
                        },
                        child: Text("Latest & Trending",
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    color: Colors.black,
                    margin:
                        EdgeInsets.only(bottom: 5, right: 5, left: 5, top: 5),
                    alignment: Alignment.center,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return Container(
                                  child: Image(
                                    image: AssetImage(Model().images[index]),
                                    fit: BoxFit.contain,
                                  ),
                                );
                              },
                            ));
                          },
                          child: Container(
                            height: 140,
                            width: 120,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      Model().images[index],
                                    ),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(12)),

                            ),
                        );
                      },
                      itemCount: Model().images.length,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      color: Colors.black,
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.all(5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) {
                              return secondpage(1);
                            },
                          ));
                        },
                        child: Text(
                          "Popular Shows",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      height: 150,
                      color: Colors.black,
                      margin:
                          EdgeInsets.only(bottom: 5, right: 5, left: 5, top: 2),
                      alignment: Alignment.center,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return Image(
                                    image:
                                        AssetImage(Model().showimages[index]),
                                    fit: BoxFit.contain,
                                  );
                                },
                              ));
                            },
                            child: Container(
                              height: 140,
                              width: 120,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        Model().showimages[index],
                                      ),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(12)),

                            ),
                          );
                        },
                        itemCount: Model().showimages.length,
                      )),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      color: Colors.black,
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.all(5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) {
                              return secondpage(2);
                            },
                          ));
                        },
                        child: Text(
                          "Best Kids Shows",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      height: 150,
                      color: Colors.black,
                      margin:
                          EdgeInsets.only(bottom: 5, right: 5, left: 5, top: 2),
                      alignment: Alignment.center,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return Image(
                                    image: AssetImage(Model().kids[index]),
                                    fit: BoxFit.contain,
                                  );
                                },
                              ));
                            },
                            child: Container(
                              height: 140,
                              width: 120,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        Model().kids[index],
                                      ),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(12)),

                            ),
                          );
                        },
                        itemCount: Model().kids.length,
                      )),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      color: Colors.black,
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.all(5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) {
                              return secondpage(3);
                            },
                          ));
                        },
                        child: Text(
                          "Popular Movies",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      height: 150,
                      color: Colors.black,
                      margin:
                          EdgeInsets.only(bottom: 5, right: 5, left: 5, top: 2),
                      alignment: Alignment.center,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return Image(
                                    image: AssetImage(
                                        Model().PopularMovies[index]),
                                    fit: BoxFit.contain,
                                  );
                                },
                              ));
                            },
                            child: Container(
                              height: 140,
                              width: 120,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        Model().PopularMovies[index],
                                      ),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(12)),

                            ),
                          );
                        },
                        itemCount: Model().PopularMovies.length,
                      )),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      color: Colors.black,
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.all(5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) {
                              return secondpage(4);
                            },
                          ));
                        },
                        child: Text(
                          "Multiplex Movies",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      height: 150,
                      color: Colors.black,
                      margin:
                          EdgeInsets.only(bottom: 5, right: 5, left: 5, top: 2),
                      alignment: Alignment.center,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return Image(
                                    image: AssetImage(
                                        Model().MultiplexMovies[index]),
                                    fit: BoxFit.contain,
                                  );
                                },
                              ));
                            },
                            child: Container(
                              height: 140,
                              width: 120,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                        Model().MultiplexMovies[index],
                                      ),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(12)),

                            ),
                          );
                        },
                        itemCount: Model().MultiplexMovies.length,
                      )),
                  Container(
                    height: 150,
                    color: Colors.black,
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                  ),
                  // Container(
                  //   height: 150,
                  //   color: Colors.black,
                  //   margin: EdgeInsets.all(5),
                  //   alignment: Alignment.center,
                  // ),
                  // Container(
                  //   height: 150,
                  //   color: Colors.black,
                  //   margin: EdgeInsets.all(10),
                  //   alignment: Alignment.center,
                  // ),
                  // Container(
                  //   height: 150,
                  //   color: Colors.black,
                  //   margin: EdgeInsets.all(10),
                  //   alignment: Alignment.center,
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
