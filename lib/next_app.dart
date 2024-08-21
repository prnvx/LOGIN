import 'package:flutter/material.dart';
import 'package:newapp/new_app.dart';
import 'package:newapp/screen/CustomButton.dart';
import 'package:newapp/screen/NewCustom.dart';

class NextApp extends StatefulWidget {
  const NextApp({super.key});

  @override
  State<NextApp> createState() => _NextAppState();
}

class _NextAppState extends State<NextApp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  void _navigateToNewApp() {
    // Combine the contents of all text fields
    String combinedContent =
        'Name: ${_nameController.text}\nAddress: ${_addressController.text}\nAge: ${_ageController.text}';
    void naappgi(){}


    // Navigate to NewApp and pass the combined content
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewApp(content: combinedContent),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextFields', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Newcustom(
              controller: _nameController,
              labelText: 'Sign In',
              borderColor: Colors.blue,
              labelColor: Colors.white, onSubmitted: (value) {  },
            ),
            const SizedBox(height: 60),
            Newcustom(
              controller: _addressController,
              labelText: 'Address',
              borderColor: Colors.green,
              labelColor: Colors.white, onSubmitted: (value) {  },
            ),
            const SizedBox(height: 60),
            Newcustom(
              controller: _ageController,
              labelText: 'Age',
              borderColor: Colors.red,
              labelColor: Colors.white, onSubmitted: (value) {  },
            ),
            const SizedBox(height: 200),
            CustomButton(
              text: 'Submit',
              onPressed: _navigateToNewApp, // Navigate with combined content
            ),
          ],
        ),
      ),
    );
  }
}
