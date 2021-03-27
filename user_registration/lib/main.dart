import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signup Registration',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'Registration'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(
                      "https://grandimageinc.com/wp-content/uploads/2015/09/icon-user-default.png"),
                )),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                top: 15,
              ),
              child: Text(
                "Signup",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                top: 40,
                right: 10,
                left: 10,
                bottom: 10,
              ),
              child: TextField(
                readOnly: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                  helperText: "Enter your username",
                  icon: Icon(Icons.account_circle),
                ),
              ),
            ),Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                top: 10,
                right: 10,
                left: 10,
                bottom: 10,
              ),
              child: TextField(
                readOnly: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email id",
                  helperText: "Enter your E-mail ID",
                  icon: Icon(Icons.email),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                top: 10,
                right: 10,
                left: 10,
                bottom: 10,
              ),
              child: TextField(
                readOnly: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  helperText: "Enter your Password",
                  icon: Icon(Icons.lock),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                top: 10,
                right: 10,
                left: 10,
                bottom: 20,
              ),
              child: TextField(
                readOnly: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Confirm Password",
                  helperText: "Enter your Password",
                  icon: Icon(Icons.lock),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {},
              textColor: Colors.white,
              color: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  30,
                ),
                side: BorderSide(
                  color: Colors.black,
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple.withOpacity(0.9),
                      Colors.purple.withOpacity(0.8),
                      Colors.purple.withOpacity(0.7),
                    ],
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  "Signup",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
