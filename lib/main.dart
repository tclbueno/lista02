import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
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
        title: const Text("Flutter is Fun!"),
        backgroundColor: Colors.green,
      ),
      body: Align(
        // Alinhamento aproximado ao da imagem (x: -0.5, y: -0.5)
        alignment: const Alignment(-0.5, -0.5),
        child: Container(
          width: 120,
          height: 120,
          color: Colors.deepOrange, // A cor do quadrado
          padding: const EdgeInsets.all(8.0),
          child: const Text(
            'Hi Mom 👋',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
