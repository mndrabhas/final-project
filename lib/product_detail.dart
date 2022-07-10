import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project/services/netwoekhelper.dart';
import 'package:project/test_page.dart';

class product_detail extends StatefulWidget {
  product_detail({Key? key}) : super(key: key);

  @override
  State<product_detail> createState() => _product_detailState();
}

class _product_detailState extends State<product_detail> {
  var post;
  bool yuk = false;
  @override
  void initState() {
    GetApidata();
    // TODO: implement initState
    super.initState();
  }

  GetApidata() async {
    post = await Networkhelper().MApiresponse();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //  post != null
        //      ? ListView.builder(
        //          itemCount: post.length,
        //          itemBuilder: (context, index) {
        //            return GestureDetector(
        //              onTap: () {
        //                Navigator.push(
        //                 context,
        //                  MaterialPageRoute(
        //                    builder: (context) {
        //                      return TestPage(
        //                       getData: post[index].location.toString(),
        //                      );
        //                    },
        //                  ),
        //                );
        //              },
        //              child: Container(
        //                  color: Colors.red,
        //                margin: EdgeInsets.all(16),
        //                  child: ListTile(title: Text(post[index].people))),
        //            );
        //          })
        //    : Center(child: CircularProgressIndicator())
        body:
            // post! =null
            // ?
            Center(
      child: Column(
        children: [
          Container(
              child: post != null
                  ? Image.network(
                      'http://mark.bslmeiyu.com/uploads/${post[1].img.toString()}',
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    ))
        ],
      ),
    ));
  }
}
