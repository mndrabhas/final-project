import 'package:flutter/material.dart';

class prod_detail extends StatefulWidget {
  final String? data;
  final String? name;
  final String? price;
  prod_detail({this.data, this.name, this.price});

  @override
  State<prod_detail> createState() => _prod_detailState();
}

class _prod_detailState extends State<prod_detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
        backgroundColor: Colors.pink.shade200,
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
                              fit: BoxFit.contain,
                              image: AssetImage(widget.data.toString()))),
                      height: 200,
                      width: 250,
                    ),
                  ],
                ),
                color: Colors.pink.shade200,
                height: 250,
                width: 500,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name.toString(),
                      style: TextStyle(fontSize: 21),
                    ),
                    Text(
                      widget.price.toString(),
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
                    Text(
                        'A rose for a rose; Perfect gift for your beloved. Any celebration flowers are the necessary answer. A rose for a rose; Perfect gift for your beloved. Any celebration, flowers are the necessary answers'),
                    Row(
                      children: [
                        star(),
                        star(),
                        star(),
                        star(),
                        star(),
                      ],
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

class star extends StatefulWidget {
  const star();

  @override
  State<star> createState() => _starState();
}

class _starState extends State<star> {
  var star_color = Colors.black54;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            star_color == Colors.black54
                ? star_color = Colors.yellow
                : star_color = Colors.black54;
          });
        },
        icon: Icon(
          Icons.star,
          color: star_color,
        ));
  }
}
