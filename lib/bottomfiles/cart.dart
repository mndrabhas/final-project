import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:project/product_detail.dart';
import 'package:project/services/netwoekhelper.dart';
import 'package:project/test_page.dart';

class cart extends StatefulWidget {
  cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  var posts;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    MApidata();
  }

  MApidata() async {
    posts = await Networkhelper().MApiresponse();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: posts != null
          ? ListView.builder(
              shrinkWrap: true,
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.network(
                        'http://mark.bslmeiyu.com/uploads/${posts[index].img}',
                        height: 100,
                        width: 100,
                      ),
                      Spacer(),
                      Text(posts[index].name),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return TestPage(
                                  getData: posts[index].description,
                                  starData: posts[index].stars,
                                  imgData: posts[index].img,
                                  priceData: posts[index].price,
                                  nameData: posts[index].name,
                                  locData: posts[index].location,
                                );
                              }));
                            });
                          },
                          icon: Icon(Icons.forward))
                    ],
                  ),
                );
              })
          : Center(child: CircularProgressIndicator()),
    );

    // ElevatedButton(
    //     onPressed: () {
    //       setState(() {
    //         Navigator.push(context, MaterialPageRoute(builder: (context) {
    //           return product_detail();
    //         }));
    //       });
    //     },
    //     child: Text('API')));
  }
}
