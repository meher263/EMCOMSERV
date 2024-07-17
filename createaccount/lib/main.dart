import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreateAccountPage(),
    );
  }
}

class CreateAccountPage extends StatelessWidget {
  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Account'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3C649F),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5),
                _buildTextField('First Name'),
                _buildTextField('Last Name'),
                _buildTextField('E-mail'),
                _buildPasswordField('Password'),
                _buildPasswordField('Confirm Password'),
                _buildTextField('Phone Number'),
                _buildDateOfBirthField(context),
                _buildTextField('Pin Code'),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color:
                                  Colors.grey), // Add a border color if desired
                        ),
                        child: TextButton(
                          onPressed: () {
                            // Handle back button press
                          },
                          child: Text('Back'),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF4779C4),
                        ),
                        child: TextButton(
                          onPressed: () {
                            // Handle next button press
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: TextField(
        style: TextStyle(fontSize: 14),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Color(0xFF3C649F).withOpacity(0.42),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF3C649F),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPasswordField(String hintText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: TextField(
        style: TextStyle(fontSize: 14),
        obscureText: true,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Color(0xFF3C649F).withOpacity(0.42),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF3C649F),
            ),
          ),
          suffixIcon: hintText == 'Password'
              ? IconButton(
                  icon: Icon(Icons.remove_red_eye),
                  onPressed: () {
                    // Toggle password visibility
                  },
                )
              : null,
        ),
      ),
    );
  }

  Widget _buildDateOfBirthField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: TextField(
        style: TextStyle(fontSize: 14),
        readOnly: true,
        controller: _dateController,
        decoration: InputDecoration(
          hintText: 'Date of Birth',
          hintStyle: TextStyle(
            fontSize: 14,
            color: Color(0xFF3C649F).withOpacity(0.42),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF3C649F),
            ),
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.calendar_today),
            onPressed: () async {
              DateTime? selectedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime.now(),
              );

              if (selectedDate != null) {
                _dateController.text =
                    "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";
              }
            },
          ),
        ),
      ),
    );
  }
}
