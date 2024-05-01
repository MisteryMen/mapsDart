import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: "GoogleMaps",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imageMaps.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Positioned(
                top: 130,
                right: 10,
                child: Container(
                  width: 100,
                  child:
                  FloatingActionButton(
                    onPressed: () {
                     print("centrar");
                    },
                   backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation: 5,
                    child:
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                     child:Row(
                       children: [
                         Icon(Icons.gas_meter_outlined),
                         SizedBox(width: 0.5),
                         Text("Gasolineras",style: TextStyle(fontSize: 12),),
                       ],
                     ),
                    ),
                  ),
                ),
              ),


              Positioned(
                top: 130,
                right: 130,
                child: Container(
                  width: 100,
                  child:
                  FloatingActionButton(
                    onPressed: () {
                      print("centrar");
                    },
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation: 5,
                    child:
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child:Row(
                        children: [
                          Icon(Icons.bed),
                          SizedBox(width: 4),
                          Text("Hoteles",style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
//Restaurantes
              Positioned(
                top: 130,
                right: 250,
                child: Container(
                  width: 120,
                  child:
                  FloatingActionButton(
                    onPressed: () {
                      print("centrar");
                    },
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation: 5,
                    child:
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child:Row(
                        children: [
                          Icon(Icons.flatware),
                          SizedBox(width: 4),
                          Text("Restaurantes",style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 60,
                left: 30,
                right: 30,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {
                          _controller.clear();
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.black,
            unselectedLabelStyle: TextStyle(color: Colors.black),
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.location_city_rounded),label: 'Explorar'),
              BottomNavigationBarItem(icon: Icon(Icons.train), label: 'ir'),
              BottomNavigationBarItem(icon: Icon(Icons.flag), label: 'guardados'),
              BottomNavigationBarItem(icon: Icon(Icons.data_saver_on_sharp), label: 'Contribuir'),
              BottomNavigationBarItem(icon: Icon(Icons.notifications_none), label: 'Novedades'),
            ],

          ),
        ),
      ),
    );
  }
}
