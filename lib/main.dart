import 'package:flutter/material.dart';
// Importamos las páginas desde la carpeta específica
import 'LasPaginas/pagina_home.dart';
import 'LasPaginas/pagina_detalle.dart';

void main() => runApp(const MyAppZoo());

class MyAppZoo extends StatelessWidget {
  const MyAppZoo({super.key});

  @override
  Widget build(BuildContext context) {
    // Definimos un color primario personalizado para que coincida con el diseño
    final Color colorPrimario = const Color(0xFF81C784); // Verde tenue

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zoológico App',
      theme: ThemeData(
        primaryColor: colorPrimario,
        // Configuramos el AppBarTheme globalmente
        appBarTheme: AppBarTheme(
          backgroundColor: colorPrimario,
          foregroundColor: Colors.white, // Color del texto y los iconos en el AppBar
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PaginaHome(),
        '/visitantes': (context) => const PaginaDetalle(
              titulo: 'Visitantes',
              urlImagen: 'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/refs/heads/main/v.jpg',
              texto: 'Visitante: Fernanda Martinez',
            ),
        '/empleados': (context) => const PaginaDetalle(
              titulo: 'Empleados',
              urlImagen: 'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/refs/heads/main/c2.jfif',
              texto: 'Empleada: Miranda Fernandez',
            ),
        '/animales': (context) => const PaginaDetalle(
              titulo: 'Nuestros Animales',
              urlImagen: 'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/refs/heads/main/elefante.webp',
              texto: 'elefante',
            ),
      },
    );
  }
}
