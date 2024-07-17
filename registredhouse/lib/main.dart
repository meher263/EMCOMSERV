import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Registered House Page'),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 323,
                height: 280,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(71, 121, 196, 0.50),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 20),
                        Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            '#0189',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            'JUSTIN BIEBER',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            '#56592',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            '#0189- ED SHEERAN STREET,',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            'NEW YORK',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(bottom: 20),
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
                    'PROCEED',
                    style: TextStyle(color: Colors.white),
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
