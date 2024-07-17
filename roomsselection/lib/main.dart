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
          title: Center(child: Text("Rooms Selection")),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RoomContainer("Hall"),
                RoomContainer("Bedroom 1"),
                RoomContainer("Bedroom 2"),
                RoomContainer("Washroom 1"),
                RoomContainer("Washroom 2"),
                RoomContainer("Kitchen"),
                RoomContainer("Balcony"),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Add your logic for confirmation button click
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF4779C4).withOpacity(0.75),
                    minimumSize: Size(129, 42),
                  ),
                  child: Text(
                    "Confirm",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RoomContainer extends StatefulWidget {
  final String roomName;

  RoomContainer(this.roomName);

  @override
  _RoomContainerState createState() => _RoomContainerState();
}

class _RoomContainerState extends State<RoomContainer> {
  String selectedOption = "0 Sockets"; // Default option

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 342,
      height: 131,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFFD2E3EE),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left side - Images
          Container(
            width: 70,
            height: 70,
            // ---images
            color: Colors.white,
          ),
          SizedBox(width: 10),
          // Right side - Dropdown
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.roomName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                DropdownButton<String>(
                  value: selectedOption,
                  onChanged: (String? value) {
                    setState(() {
                      selectedOption = value!;
                    });
                  },
                  items: [
                    "0 Sockets",
                    "1 Socket",
                    "2 Sockets",
                    "3 Sockets",
                    "4 Sockets",
                    "5 Sockets"
                  ]
                      .map<DropdownMenuItem<String>>(
                        (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
