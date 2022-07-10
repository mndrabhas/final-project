import 'package:flutter/material.dart';
import 'package:project/login_info/login.dart';

class sign_up extends StatefulWidget {
  sign_up({Key? key}) : super(key: key);

  @override
  State<sign_up> createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  double circbox = 0;
  double circbox1 = 0;
  double circbox2 = 0;
  bool circ = false;
  bool circ1 = false;
  bool circ2 = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        setState(() {
          circbox = 0;
          circbox1 = 0;
          circbox2 = 0;
        });
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 100),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/logo.png'),
                        )),
                    height: 200,
                    width: 300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                      child: Text(
                    'login to your account',
                    style: TextStyle(color: Colors.blue),
                  )),
                ),
                SizedBox(
                  child: TextField(
                    onTap: () {
                      if (circbox1 == 0)
                        circ = false;
                      else
                        circ = true;
                      circbox = 0;
                      circbox2 = 0;
                      circ = !circ;
                      setState(() {
                        circ == true ? circbox1 = 40 : circbox1 = 0;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(circbox1)),
                      hintText: 'Email',
                    ),
                  ),
                  width: 300,
                  height: 70,
                ),
                SizedBox(
                  child: TextField(
                    onTap: () {
                      if (circbox == 0)
                        circ1 = false;
                      else
                        circ1 = true;
                      circ1 = !circ1;
                      setState(() {
                        circ1 = true;
                        circbox1 = 0;
                        circbox2 = 0;
                        circ1 == true ? circbox = 40 : circbox = 0;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(circbox)),
                      hintText: 'password',
                    ),
                  ),
                  width: 300,
                  height: 70,
                ),
                SizedBox(
                  child: TextField(
                    onTap: () {
                      if (circbox2 == 0)
                        circ2 = false;
                      else
                        circ2 = !circ2;
                      setState(() {
                        circ2 = true;
                        circbox1 = 0;
                        circbox = 0;
                        circ2 == true ? circbox2 = 40 : circbox2 = 0;
                      });
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(circbox2)),
                      hintText: 'Confirm Password',
                    ),
                  ),
                  width: 300,
                ),
                ElevatedButton(onPressed: () {}, child: Text('Sign up')),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 60),
                      child: Text('Already have an account'),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                          top: 30,
                          left: 10,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.pop(context,
                                  MaterialPageRoute(builder: (context) {
                                return sign_up();
                              }));
                            });
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
