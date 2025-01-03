import 'package:flutter/material.dart';
import 'package:theme_pkg/ui/components/button.dart';
import 'package:theme_pkg/ui/themes/zen_theme.dart';

void main() {
  ZenColors.schemeColor = SchemeColor(primaryColor: Colors.yellow);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ZenTheme.buildTheme(),
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
          title: const Text("Buttons"),
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
                context: context,
              ),
            ],
          ),
        ));
  }
}
