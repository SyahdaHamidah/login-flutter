import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Page",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          child: Container(
            //isi child: Container
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                //jumlah stop berbanding lurus dengan jumlah warna
                  stops: [0.3, 0.6, 0.9],
                  colors: [
                    Color.fromRGBO(82, 0, 140, 1),
                    Color.fromRGBO(102, 0, 141, 1),
                    Color.fromRGBO(111, 0, 143, 1),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 15.0,
                      color: Colors.black,
                      spreadRadius: 10.5),
                ]),
            margin: EdgeInsets.fromLTRB(40, 105, 40, 120),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 45, top: 15),
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/login.png', width: 99, height: 45),
                      Text(
                        "Login",
                        style: TextStyle(
                            fontFamily: 'LexendDeca',
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(top: 10, bottom: 8),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Email",
                                prefixIcon: Icon(Icons.message),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(28))),
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 10, bottom: 8),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Password",
                                prefixIcon: Icon(Icons.lock),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(28))),
                          )),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        color: Colors.purple,
                        textColor: Colors.white,
                        child: Text('Sign In'),
                        onPressed: () {},
                      ),
                      FlatButton(
                        textColor: Colors.white,
                        child: Text('Forgot password'),
                        onPressed: () {},
                      )
                    ],
                  ),
                )
              ],
            ),
            //child: Container
          ),
        ),
      ),
    );
  }
}
