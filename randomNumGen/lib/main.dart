
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const RandomNumberGenerator(),
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 39, 25, 238)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RandomNumberGenerator extends StatefulWidget {
  const RandomNumberGenerator({super.key});

  @override
  _RandomNumberGeneratorState createState() => _RandomNumberGeneratorState();
}

class _RandomNumberGeneratorState extends State<RandomNumberGenerator> {
  final Random _random = Random(); // creates a Random object
  int _randomNumber = 0;

  void generateRandomNumber() {
    setState(() {
      _randomNumber = 10000000 + _random.nextInt(90000000);

      /// generates random 4 digit number
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random 8-Digit Number Generator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Random 8-Digit Number:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            Text(
              '$_randomNumber', // display generated number
              style:
                  const TextStyle(fontSize: 144, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: generateRandomNumber,
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 245, 41, 194)),
                  foregroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 254, 254, 255)),
                  mouseCursor: MaterialStatePropertyAll(MouseCursor.defer),
                  shape: MaterialStatePropertyAll(BeveledRectangleBorder())),
              child: const Text('Generate Random 8-Digit Number'),
            ),
          ],
        ),
      ),
    );
  }
}
