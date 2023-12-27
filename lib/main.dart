import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: index == 0 ? Colors.red : Colors.green,
      child: Center(
        child: SizedBox(
          width: 100.0,
          height: 40.0,
          child: ElevatedButton(
            onPressed: () {
              setState(
                () {
                  count++;
                  index = 1 - index;
                },
              );
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "hello",
                  style: index == 0
                      ? const TextStyle(color: Colors.red)
                      : const TextStyle(color: Colors.green),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Count: $count",
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
