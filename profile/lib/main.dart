import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                    'assets/default_profile_pic.jpg'), // Replace with your image
              ),
              SizedBox(height: 8),
              Text(
                'Profile',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: 'First Name',
                  hintStyle:
                      TextStyle(color: Color(0xFF3C649F).withOpacity(0.42)),
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
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  hintStyle:
                      TextStyle(color: Color(0xFF3C649F).withOpacity(0.42)),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: 'User ID',
                  hintStyle:
                      TextStyle(color: Color(0xFF3C649F).withOpacity(0.42)),
                ),
              ),
              SizedBox(height: 16), // Add some space here
              ElevatedButton(
                onPressed: () {
                  // Implement confirmation action
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF4779C4),
                ),
                child: Text(
                  'CONFORM',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
