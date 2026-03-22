import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TelaBranca(),
    );
  }
}

class TelaBranca extends StatelessWidget {
  const TelaBranca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              ItemIcone(icon: Icons.call, texto: 'CALL'),
              ItemIcone(icon: Icons.navigation, texto: 'ROUTE'),
              ItemIcone(icon: Icons.share, texto: 'SHARE'),
            ],
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}

class ItemIcone extends StatelessWidget {
  final IconData icon;
  final String texto;

  const ItemIcone({super.key, required this.icon, required this.texto});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {
        print('$texto clicado');
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.purple, size: 30),
          const SizedBox(height: 8),
          Text(
            texto,
            style: const TextStyle(
              color: Colors.purple,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
