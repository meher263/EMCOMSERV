import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(top: 60, bottom: 10),
                child: Text(
                  'EMCOM',
                  style: TextStyle(fontSize: 60, color: Colors.indigo),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 80, bottom: 40, left: 15),
                child: Text(
                  'One Account. Any Device. Just for you...',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.only(top: 60, bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(108, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: Color.fromRGBO(71, 121, 196, 0.75),
                  ),
                  child: Text(
                    'SIGNIN',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
