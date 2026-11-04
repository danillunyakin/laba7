
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double width = 100;
  double height = 100;
  double radius = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
        backgroundColor: Colors.purple.shade100,
      ),
      body: Column(
        children: [
          const SizedBox(height: 40),

          Center(
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(radius),
                ),
              ),
            ),
          ),

          const SizedBox(height: 40),

          Text('Width: ${width.round()}'),
          Slider(
            value: width,
            min: 50,
            max: 300,
            onChanged: (value) {
              setState(() {
                width = value;
              });
            },
          ),

          Text('Height: ${height.round()}'),
          Slider(
            value: height,
            min: 50,
            max: 300,
            onChanged: (value) {
              setState(() {
                height = value;
              });
            },
          ),

          Text('Top Right Radius: ${radius.round()}'),
          Slider(
            value: radius,
            min: 0,
            max: 100,
            onChanged: (value) {
              setState(() {
                radius = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
