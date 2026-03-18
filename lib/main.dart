import 'package:flutter/material.dart';

void main() => runApp(const MiNegocioPerfumes());

class MiNegocioPerfumes extends StatelessWidget {
  const MiNegocioPerfumes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nuestras Fragancias',
      home: Scaffold(
        backgroundColor: const Color(0xFF5D0E1F), // Fondo Guinda
        appBar: AppBar(
          title: const Text('Nuestras Fragancias', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color(0xFF3E0915),
          centerTitle: true,
          elevation: 0,
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            _tarjetaConImagen('Perfumes Árabes', 'https://raw.githubusercontent.com/damian56667/imagenes/refs/heads/main/per1.webp'),
            _tarjetaConImagen('Nichos', 'https://raw.githubusercontent.com/damian56667/imagenes/refs/heads/main/per3.jfif'),
            _tarjetaConImagen('Diseñador', 'https://raw.githubusercontent.com/damian56667/imagenes/refs/heads/main/per2.jfif'),
            _tarjetaConImagen('Caballero', 'https://raw.githubusercontent.com/damian56667/imagenes/refs/heads/main/perf4.webp'),
            _tarjetaConImagen('Dama', 'https://raw.githubusercontent.com/damian56667/imagenes/refs/heads/main/perf5.jfif'),
          ],
        ),
      ),
    );
  }

  Widget _tarjetaConImagen(String categoria, String urlImagen) {
    return Container(
      height: 120,
      margin: const EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        color: Colors.white, // Fondo de la tarjeta
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 8, offset: Offset(0, 4))
        ],
      ),
      child: Row(
        children: [
          // LADO IZQUIERDO: Imagen corregida con Padding
          Container(
            width: 120,
            decoration: const BoxDecoration(
              color: Color(0xFFEEEEEE),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0), // Aquí es donde va el padding
              child: Image.network(
                urlImagen,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image),
              ),
            ),
          ),
          
          // LADO DERECHO: Textos
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Contenedor para que las letras BLANCAS sean legibles
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  margin: const EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xFF5D0E1F),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Text(
                    'Nuestras Fragancias',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white, // LETRAS BLANCAS
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    categoria,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // LETRAS NEGRAS
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}