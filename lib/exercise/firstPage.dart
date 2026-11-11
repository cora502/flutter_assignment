import 'package:flutter/material.dart';
import 'package:flutter_assignment/exercise/secondPage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key}); // Added the standard constructor

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // 1. Create controllers to read the text from the input boxes
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  // 2. Always dispose of controllers when the page is destroyed to free up memory
  @override
  void dispose() {
    _nameController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      // 3. Wrap everything in a Padding and Column to stack the inputs vertically
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Input box for Name
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Enter Name',
                border: OutlineInputBorder(), // Gives the box a nice border
              ),
            ),
            
            const SizedBox(height: 16), // Spacing between boxes
            
            // Input box for Age
            TextField(
              controller: _ageController,
              decoration: const InputDecoration(
                labelText: 'Enter Age',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number, // Opens the number keyboard on phones
            ),
            
            const SizedBox(height: 24),
            
            ElevatedButton(
              onPressed: () {
                // 4. Retrieve the values from the controllers
                final String inputName = _nameController.text;
                
                // 5. Convert the age text to an integer (defaults to 0 if they type something invalid)
                final int inputAge = int.tryParse(_ageController.text) ?? 0;

                // Navigate and pass the dynamic data
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(
                      userName: inputName, 
                      age: inputAge
                    ),
                  ),
                );
              },
              child: const Text('Go to Second Page'),
            ),
          ],
        ),
      ),
    );
  }
}