import 'package:flutter/material.dart';

class offers extends StatefulWidget {
  offers({Key? key}) : super(key: key);

  @override
  State<offers> createState() => _offersState();
}

class _offersState extends State<offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('offers'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, int index) {
                    return Container(
                      child: Text('data'),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
