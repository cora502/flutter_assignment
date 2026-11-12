import 'package:material_ui/material_ui.dart';

/// Flutter code sample for [IconButton].

void main() => runApp(const IconButtonExampleApp());

class IconButtonExampleApp extends StatelessWidget {
  const IconButtonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('IconButton Sample')),
        body: const Center(child: IconButtonExample()),
      ),
    );
  }
}

double _volume = 0.0;

class IconButtonExample extends StatefulWidget {
  const IconButtonExample({super.key});

  @override
  State<IconButtonExample> createState() => _IconButtonExampleState();
}

class _IconButtonExampleState extends State<IconButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.volume_up),
          tooltip: 'Increase volume by 10',
          onPressed: () {
            setState(() {
              _volume += 10;
            });
          },
        ),
        Text('Volume : ${_volume.toStringAsFixed(1)}'),

        //the icon button's background color is defined with an Ink widget whose child is an IconButton.
        Ink(
          decoration: const ShapeDecoration(
            color: Colors.lightBlue,
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: const Icon(Icons.android),
            color: const Color.fromARGB(255, 219, 7, 7),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
