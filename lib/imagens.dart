import 'package:flutter/material.dart';

void main() {
  runApp(const ImageExerciseApp());
}

class ImageExerciseApp extends StatelessWidget {
  const ImageExerciseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Insert Image Example'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          // Usamos Column para colocar uma imagem embaixo da outra
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Primeira Imagem (Tamanho maior)
              SizedBox(
                width: 350,
                height: 200,
                child: FittedBox(
                  fit: BoxFit
                      .cover, // Faz a imagem preencher o espaço sem distorcer
                  child: Image.network('https://picsum.photos/id/10/400/200'),
                ),
              ),

              // O Widget solicitado para separar as imagens
              const SizedBox(height: 30),

              // Segunda Imagem (Tamanho inferior, conforme o enunciado)
              SizedBox(
                width: 200,
                height: 120,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.network('https://picsum.photos/id/20/200/200'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
