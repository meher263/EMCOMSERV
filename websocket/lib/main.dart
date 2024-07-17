import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Socket socket;
  bool _isOn = false;

  @override
  void initState() {
    super.initState();
    _initSocket();
  }

  void _initSocket() async {
    try {
      socket = await Socket.connect('3.109.213.115', 8080);

      // Listen for data from the server
      socket.listen((List<int> data) {
        String serverResponse = utf8.decode(data);
        print('Received from server: $serverResponse');

        // Display "WELCOME TO EMCOMSERV" when initially connected
        if (serverResponse == "WELCOME TO EMCOMSERV") {
          // Do something with the welcome message, e.g., display it
          print("Welcome message received!");
        }
      });
    } catch (e) {
      print('Error connecting to the server: $e');
    }
  }

  void _sendMyMessage(bool isOn) {
    String message = isOn ? "APPLIGHTON" : "APPLIGHTOFF";
    socket.write(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TCP/IP Communication"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Switch(
              value: _isOn,
              onChanged: (value) {
                setState(() {
                  _isOn = value;
                });
                _sendMyMessage(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
