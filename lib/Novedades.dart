import 'package:flutter/material.dart';

class Novedades extends StatelessWidget {
  final List<Map<String, String>> novedades = const [
    {'image': 'assets/novedad_1.jpg', 'description': 'Buscas algun restaurant con tematica de comida Mexicana, esto te puede interesar.'},
    {'image': 'assets/novedad_2.jpg', 'description': 'Algun restaurant al que quieras salir a comer con toda la familia?'},
    {'image': 'assets/novedad_3.jpg', 'description': 'Con este calor, una babida refrescante en algun lugar para platicar?'},
    {'image': 'assets/novedad_4.jpg', 'description': 'Buscas a donde salir en pareja, por que no un museo en el Mexico bello?'},
    {'image': 'assets/novedad_5.jpg', 'description': 'Quieres salir con tus amigos a un lugar nocturno, por que no le echas un vistazo.'},
    {'image': 'assets/novedad_6.jpg', 'description': 'Te gustan los animales y estas libre, por que no a estos grandes zologicos.'},
    // Agrega más rutas de imágenes y descripciones según sea necesario
  ];

  const Novedades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novedades'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Acción para la búsqueda
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Bienvenido a la sección de novedades. Aquí encontrarás las últimas actualizaciones. Ve novedades, fotos, restaurantes, comidas, bebidas, y negocios de gente que quisas conozcas y sigas en Google Maps. Desliza para ver mas.',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 520, // Altura del carrusel
            child: PageView.builder(
              itemCount: novedades.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            novedades[index]['image']!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        novedades[index]['description']!,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          // Aquí se  agregan las secciones: Following, Notificaciones, Mensajes
          // Ejemplo:
          // FollowingSection(),
          // NotificationsSection(),
          // MessagesSection(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city_rounded),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.train),
            label: 'Ir',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: 'Guardados',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.data_saver_on_sharp),
            label: 'Contribuir',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: 'Novedades',
          ),
        ],
        onTap: (int index) {
          // Navegación para los ítems del BottomNavigationBar
          // Puedes agregar la lógica para cada ítem aquí
        },
      ),
    );
  }
}

