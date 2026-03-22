import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Desafio de Empilhamento')),
        body: Center(
          child: SizedBox(
            height: 400,
            width: 400,
            child: Stack(
              children: [
                Container(
                  width: 300,
                  height: 300,
                  color: Colors.blue,
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  child: const Text('Base', style: TextStyle(color: Colors.white)),
                ),
                
                Positioned(
                  top: 50,
                  left: 50,
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.red,
                    padding: const EdgeInsets.all(10),
                    child: const Text('Meio', style: TextStyle(color: Colors.white)),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 100,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                    padding: const EdgeInsets.all(10),
                    child: const Text('Topo', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
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