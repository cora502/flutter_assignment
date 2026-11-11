import 'package:flutter/material.dart';
import 'card.dart'; // Sibling import (they are in the same folder)
import 'appbar.dart'; // Sibling import (they are in the same folder)
import 'firstPage.dart';
import 'form.dart';
import 'counter.dart';
class MyTabbedPage extends StatelessWidget {
  const MyTabbedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.flight)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.restaurant)), 
              Tab(icon: Icon(Icons.shopping_cart)),
              Tab(icon: Icon(Icons.person)),
              Tab(icon: Icon(Icons.description)),
              Tab(icon: Icon(Icons.add)),
            ],
          ),
          title: const Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: [
            const Icon(Icons.flight, size: 350),
            const Icon(Icons.directions_transit, size: 350),
            const PavlovaCard(), 
            const AppBarDemo(),
            FirstPage(),
            const FormExampleApp(),
            const CounterPage(),
          ],
        ),
      ),
    );
  }
}