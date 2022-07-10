import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project/img.dart';
import 'package:project/prod_detail.dart';
import 'package:project/product_detail.dart';
import 'package:http/http.dart' as http;

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String greetings() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'GoodMoring,User';
    }
    if (hour < 17) {
      return 'Goodafternoon,User';
    }
    if (hour < 21) {
      return 'Good evening,User';
    } else {
      return 'Goodnight,User';
    }
  }

  getapi() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var body = response.body;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 245, 245),
        body: ListView(
          children: [
            Container(
              child: ListTile(
                tileColor: Color.fromARGB(255, 120, 192, 251),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                leading: Icon(Icons.home),
                hoverColor: Colors.amber,
                title: Container(
                  child: Text(
                    'Home',
                    style: TextStyle(fontSize: 25),
                  ),
                  margin: EdgeInsets.only(left: 95),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                child: Text(
                  greetings(),
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(255, 98, 176, 240),
                      fontWeight: FontWeight.bold),
                ),
                margin: EdgeInsets.only(right: 50),
              ),
            ),
            Container(
                child: CarouselSlider(
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      autoPlayInterval: Duration(milliseconds: 2000),
                      autoPlay: true,
                    ),
                    items: imglist
                        .map((e) => ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Stack(
                              fit: StackFit.loose,
                              children: <Widget>[
                                Image.asset(
                                  e,
                                  height: 180,
                                  width: 180,
                                  fit: BoxFit.fitHeight,
                                )
                              ],
                            )))
                        .toList())),

            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return prod_detail(
                          data: "assets/flo.JPG",
                          name: 'rose',
                          price: 'Rs:111',
                        );
                      },
                    ),
                  );
                },
                child: flowerlist(
                    img: 'assets/flo.JPG', f_name: 'rose', f_price: 'Rs:111')),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return prod_detail(
                          data: 'assets/Rectangle 1 (1).png',
                          name: 'whiterose',
                          price: 'Rs:133',
                        );
                      },
                    ),
                  );
                },
                child: flowerlist(
                    img: 'assets/Rectangle 1 (1).png',
                    f_name: 'whiterose',
                    f_price: 'Rs:133')),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return prod_detail(
                          data: 'assets/Rectangle 1 (2).png',
                          name: 'petal',
                          price: 'Rs:177',
                        );
                      },
                    ),
                  );
                },
                child: flowerlist(
                    img: 'assets/Rectangle 1 (2).png',
                    f_name: 'petal',
                    f_price: 'Rs:177')),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return prod_detail(
                          data: 'assets/Rectangle 1 (3).png',
                          name: 'dendalion',
                          price: 'Rs:166',
                        );
                      },
                    ),
                  );
                },
                child: flowerlist(
                    img: 'assets/Rectangle 1 (3).png',
                    f_name: 'dandalion',
                    f_price: 'Rs:166')),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return prod_detail(
                        data: 'assets/Rectangle 1.png',
                        name: 'merry',
                        price: 'Rs:188',
                      );
                    },
                  ),
                );
              },
              child: flowerlist(
                  img: 'assets/Rectangle 1.png',
                  f_name: 'merry',
                  f_price: '188'),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(40),
            //         boxShadow: [
            //           BoxShadow(
            //               color: Color.fromARGB(255, 157, 157, 157),
            //               offset: Offset(2, 2))
            //         ]),
            //     child: Image.asset(
            //       'assets/flo.JPG',
            //       height: 100,
            //     ),
            //   ),
            // ),
          ],
        )
        // child: Column(
        //   children: [
        //     ListTile(
        //       tileColor: Color.fromARGB(255, 120, 192, 251),
        //       shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(25)),
        //       leading: Icon(Icons.home),
        //       hoverColor: Colors.amber,
        //       title: Container(
        //         child: Text(
        //           'Home',
        //           style: TextStyle(fontSize: 25),
        //         ),
        //         margin: EdgeInsets.only(left: 95),
        //       ),
        //     ),
        //     Padding(
        //       padding: const EdgeInsets.all(10),
        //       child: Container(
        //         child: Text(
        //           greetings(),
        //           style: TextStyle(
        //               fontSize: 30,
        //               color: Color.fromARGB(255, 98, 176, 240),
        //               fontWeight: FontWeight.bold),
        //         ),
        //         margin: EdgeInsets.only(right: 130),
        //       ),
        //     ),
        //     Container(
        //       child: Column(
        //         children: [
        //           Container(
        //               child: ListTile(trailing: Icon(Icons.shopping_cart))),
        //         ],
        //       ),
        //     )
        //   ],
        // ),

        );
  }
}

class flowerlist extends StatefulWidget {
  final String img;
  final String f_name;
  final String f_price;
  const flowerlist({
    required this.img,
    required this.f_name,
    required this.f_price,
  });

  @override
  State<flowerlist> createState() => _flowerlistState();
}

class _flowerlistState extends State<flowerlist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(255, 157, 157, 157),
                    offset: Offset(2, 2))
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 226, 226),
                    borderRadius: BorderRadius.circular(80),
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(widget.img),
                    )),
                height: 100,
                width: 100,
              ),
              Container(
                child: Column(
                  children: [Text(widget.f_name), Text(widget.f_price)],
                ),
              ),
              Container(
                child: Icon(Icons.shopping_cart),
                margin: EdgeInsets.only(right: 10),
              )
            ],
          )),
    );
  }
}
