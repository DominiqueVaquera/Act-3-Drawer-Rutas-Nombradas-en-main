import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtenemos el color primario definido en el tema principal
    final colorPrimario = Theme.of(context).primaryColor;

    return Drawer(
      child: ListView(
        // Importante: Eliminar cualquier relleno del ListView.
        padding: EdgeInsets.zero,
        children: [
          // Encabezado del Drawer (DrawerHeader) personalizado
          DrawerHeader(
            decoration: BoxDecoration(
              color: colorPrimario, // Usamos el color del tema
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Avatar del negocio (Imagen desde red)
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage('https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/refs/heads/main/j.jfif'),
                ),
                const SizedBox(height: 10),
                // Nombre de la empresa
                const Text(
                  'Zoologico',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // Información de contacto
                const Text(
                  'Av. Avena | 6567863680 | zoologico@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          // Opciones del Menú (ListTile)
          _crearItem(context, Icons.home, 'Inicio', '/'),
          _crearItem(context, Icons.people, 'Visitantes', '/visitantes'),
          _crearItem(context, Icons.badge, 'Empleados', '/empleados'),
          _crearItem(context, Icons.pets, 'Animales', '/animales'),
        ],
      ),
    );
  }

  // Función auxiliar para crear items del menú de forma consistente
  Widget _crearItem(BuildContext context, IconData icono, String texto, String? rutaNombrada) {
    final colorPrimario = Theme.of(context).primaryColor;
    return ListTile(
      leading: Icon(icono, color: colorPrimario), // Icono a la izquierda
      title: Text(texto), // Texto
      onTap: () {
        // Primero cerramos el drawer
        Navigator.pop(context); 
        // Luego navegamos a la ruta nombrada si existe
        if (rutaNombrada != null) {
          Navigator.pushReplacementNamed(context, rutaNombrada);
        }
      },
    );
  }
}
