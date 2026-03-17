import 'package:flutter/material.dart';
import 'menu_lateral.dart'; // Importamos el Drawer

class PaginaDetalle extends StatelessWidget {
  final String titulo;
  final String urlImagen;

  const PaginaDetalle({super.key, required this.titulo, required this.urlImagen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      drawer: const MenuLateral(), // Asignamos el Drawer personalizado
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen desde la red (Github) centrada de 200x200
            Image.network(
              urlImagen,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
              // Manejo de error por si la imagen no carga
              errorBuilder: (context, error, stackTrace) => 
                const Icon(Icons.broken_image, size: 200, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Text(
              'Sección: $titulo',
              style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}