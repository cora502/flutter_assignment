import 'package:flutter/material.dart';
import 'card.dart'; 
import 'appbar.dart'; 
import 'firstPage.dart';
import 'form.dart';
import 'counter.dart';
import 'button.dart'; 
import 'floating.dart'; 
import 'iconButton.dart'; 
import 'buttonStyle.dart';
import 'segmentedButton.dart';

class MyTabbedPage extends StatelessWidget {
  const MyTabbedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
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
              Tab(icon: Icon(Icons.remove)),
              Tab(icon: Icon(Icons.settings)),
              Tab(icon: Icon(Icons.info)),
            ],
          ),
          title: const Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: [
            const PavlovaCard(), 
            const AppBarDemo(),
            FirstPage(),
            const FormExampleApp(),
            const CounterPage(),
            const ButtonApp(),
            const FloatingActionButtonExampleApp(),
            const IconButtonExampleApp(),
            const IconButtonM3EExampleApp(),
            const SegmentedButtonApp(),
          ],
        ),
      ),
    );
  }
}