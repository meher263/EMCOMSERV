import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool rememberId = false;

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
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 20, bottom: 10, left: 15),
                child: Text(
                  'One Account. Any Device. Just for you...',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle:
                      TextStyle(color: Color(0xFF3C649F).withOpacity(0.42)),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Checkbox(
                    value: rememberId,
                    onChanged: (value) {
                      setState(() {
                        rememberId = value!;
                      });
                    },
                  ),
                  Text(
                    'Remember my ID',
                    style: TextStyle(color: Color(0xFF3C649F)),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.only(top: 20, bottom: 10),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(180, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: Color.fromRGBO(71, 121, 196, 0.75),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    padding: EdgeInsets.only(top: 20, bottom: 30),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle 'Find ID' click
                          },
                          child: Text(
                            'Find ID',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        GestureDetector(
                          onTap: () {
                            // Handle 'Create Account' click
                          },
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Handle 'Sign in with Google' click
                        },
                        icon: Icon(Icons.android), // Placeholder icon
                        label: Text('Sign in with Google'),
                      ),
                      SizedBox(width: 20),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Handle 'Sign in with QR Code' click
                        },
                        icon: Icon(Icons.qr_code), // Placeholder icon
                        label: Text('Sign in with QR Code'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
