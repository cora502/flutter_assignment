import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

// 1. Add "with AutomaticKeepAliveClientMixin"
class _CounterPageState extends State<CounterPage> with AutomaticKeepAliveClientMixin {
  int _counter = 0;

  // 2. Override wantKeepAlive and return true
  @override
  bool get wantKeepAlive => true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // 3. You MUST call super.build(context) at the very top of the build method
    super.build(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20), // Adds a little space between text and button
            // 2. New button to trigger the reset function
            ElevatedButton(
              onPressed: _resetCounter,
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}