import 'package:flutter/material.dart';
import 'menu_lateral.dart'; // Importamos el Drawer

class PaginaHome extends StatelessWidget {
  const PaginaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio Zoológico'),
      ),
      drawer: const MenuLateral(), // Asignamos el Drawer personalizado
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.pets, size: 100, color: Theme.of(context).primaryColor),
            const SizedBox(height: 20),
            const Text(
              'Bienvenido al Sistema del Zoológico',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text('Selecciona una opción del menú lateral.'),
          ],
        ),
      ),
    );
  }
}
