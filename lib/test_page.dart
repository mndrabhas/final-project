import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TestPage extends StatefulWidget {
  final String? getData;
  final String? imgData;
  final int? starData;
  final String? nameData;
  final int? priceData;
  final String? locData;
  TestPage(
      {this.getData,
      this.imgData,
      this.starData,
      this.nameData,
      this.priceData,
      this.locData});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
        backgroundColor: Colors.blue[300],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'http://mark.bslmeiyu.com/uploads/${widget.imgData}'))),
                      height: 200,
                      width: 250,
                    ),
                  ],
                ),
                color: Colors.blue[300],
                height: 250,
                width: 500,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.nameData.toString(),
                      style: TextStyle(fontSize: 21),
                    ),
                    Text(
                      'Rs:${widget.priceData.toString()}',
                      style: TextStyle(
                        color: Colors.blue,
                        letterSpacing: 5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(widget.getData.toString()),
                    Text(
                      'Location:',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(widget.locData.toString()),
                    RatingBar.builder(
                      initialRating: widget.starData!.toDouble(),
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                      itemSize: 15,
                    )
                  ],
                ),
                // margin: EdgeInsets.only(right: 320),
              )
            ],
          ),
        ],
      ),
    );
  }
}
