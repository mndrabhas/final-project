import 'package:flutter/material.dart';
import 'package:project/bottomfiles/bottom_navi.dart';

import 'package:project/bottomfiles/home.dart';
import 'package:project/login_info/signup.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool? cheak_box = false;
  double circbox = 0;
  double circbox1 = 0;
  bool circ = false;
  bool circ1 = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        setState(() {
          circbox = 0;
          circbox1 = 0;
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
                Row(
                  children: [
                    Container(
                      child: Checkbox(
                        value: cheak_box,
                        onChanged: (bool? newvalue) {
                          setState(() {
                            cheak_box = newvalue;
                          });
                        },
                      ),
                      margin: EdgeInsets.only(left: 45),
                    ),
                    Container(child: Text('remember me')),
                    GestureDetector(
                      onTap: () {
                        setState(() {});
                      },
                      child: Container(
                        child: Text(
                          'Forget password?',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        margin: EdgeInsets.only(left: 40),
                      ),
                    )
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return bottom_navi();
                      }));
                    },
                    child: Text('Signin')),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 60),
                      child: Text('Don\'t have a account? '),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                          top: 30,
                          left: 10,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return sign_up();
                              }));
                            });
                          },
                          child: Text(
                            'Sign up',
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
