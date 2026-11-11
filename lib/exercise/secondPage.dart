import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String userName;
  final int age;

  const SecondPage({super.key, required this.userName, required this.age});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('User: ${widget.userName}'),
            Text('Age: ${widget.age}'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to First Page'),
            ),
          ],
        ),
      ),
    );
  }
}
