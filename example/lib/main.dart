import 'package:flutter/material.dart';
import 'package:theme_pkg/buttons/button.dart';
import 'package:theme_pkg/buttons/button_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Buttons demo"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Buttons.outline(
                text: "Outline Button",
                onPressed: () {
                  print("Outline Button Clicked");
                },
                 context: context,
              ),
              const SizedBox(height: 20),
              Buttons.primary(
                text: "Primary Button",
                onPressed: () {
                  print("Primary Button Clicked");
                },
           
                 context: context,
               
              ),
              const SizedBox(height: 20),
              Buttons.text(
                text: "Text Button",
                onPressed: () {
                  print("Text Button Clicked");
                },
                textColor: Colors.black,
              ),
            ],
          ),
        ));
  }
}
