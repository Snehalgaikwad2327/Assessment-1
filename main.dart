import 'package:flutter/material.dart';
//import 'image_banner.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ColorChanger(),
    );
  }
}

class ColorChanger extends StatefulWidget {
  const ColorChanger({Key? key}) : super(key: key);

  @override
  State<ColorChanger> createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  var isred = false;
  @override
  Widget build(BuildContext context) {
    final color = isred ? Colors.red : Colors.green;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Icon Color Changer'),
        ),
        body: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            // ignore: prefer_const_constructors
            Icon(
              Icons.rectangle_rounded,
              color: color,
              size: 100,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (isred == true) {
                    isred = false;
                  } else {
                    isred = true;
                  }
                });
              },
              child: const Text('Click Button'),
            ),
            const Image(
              image: AssetImage('assets/images/zazapro.jpeg'),
              height: 300.0,
              width: 100.0,
            ),
          ]),
        ));
  }
}
