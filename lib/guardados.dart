
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class guardados extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Scaffold(

      body: Stack(
        children: [
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
          Positioned(
            top: 130,
              child: Container(
                width: 200,
                child:FloatingActionButton(
                onPressed: () {
                  print("Lista nueva");
                },
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 5,

                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Icon(Icons.add),
                      SizedBox(width: 5),
                      Text(
                        textAlign: TextAlign.center,
                        "Lista Nueva",
                        style: TextStyle(fontSize: 12,color: Colors.blue),

                      ),
                    ],
                  ),
                ),
              ),
              ),
          ),
            Positioned(
              top: 200,
                child:
                SingleChildScrollView(
                scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 200,
                        child: Row(
                          children:[
                            Icon(Icons.favorite_border,color: Colors.red,),
                            Center(child: Text(' Favoritos'),),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.all(10),
                        width: 200,
                        child: Row(
                          children:[
                            Icon(Icons.flag,color: Colors.green,),
                            Center(child: Text(' Por visitar'),),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.all(10),
                        width: 200,
                        child: Row(
                          children:[
                            Icon(Icons.star_border,color: Colors.orange,),
                            Center(child: Text(' Lugares destacados'),),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.all(10),
                        width: 200,
                        child: Row(
                          children:[
                            Icon(Icons.label_outline,color: Colors.blueAccent,),
                            Center(child: Text(' Etiquetados'),),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 200,
                        child: Row(
                          children:[
                            Icon(Icons.luggage,color: Colors.blueAccent,),
                            Center(child: Text(' Etiquetados'),),
                          ],
                        ),
                      )
                    ],
                  ),
              ),
            ),
          Positioned(
              top: 500,
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
              child: Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(30),
                    width: 200,
                    height: 200,
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children:[
                          Image.asset('assets/map1.PNG'),
                          Text('data',textAlign: TextAlign.left,)
                        ]
                        )
                      ),
                  ),
              ],
            ),
          )),
        ],
      )
    );
  }

}