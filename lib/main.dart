import 'package:flutter/material.dart';

void main() => runApp(MyFotoHatApp());

class MyFotoHatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mi actividad",
      theme: ThemeData(
        primarySwatch: Colors.yellow, visualDensity: VisualDensity.adaptivePlatformDensity, //finvisualdensity
      ), //fin theme
      home: PaginaInicio(),
    ); //fin del returnmaterialapp
  } //finbuildmifotohatapp
} //finclasefoto

class PaginaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App de Hatziry"),
        centerTitle: true,
      ), //fin appbar
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),

              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.pink,
                    width: 5,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Hatziry Arellano',
                    style: TextStyle(fontSize: 18),
                  ),
                ), //fin child center
              ), //fin de el container nombre
              SizedBox(
                height: 50,
              ),
              Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  image: DecorationImage(image: NetworkImage("https://raw.githubusercontent.com/vianney097685/FotosRosas/main/vianney.jpg"), alignment: Alignment.topCenter),
                  border: Border(
                    top: BorderSide(
                      color: Colors.pinkAccent,
                      width: 5.0,
                    ),
                    bottom: BorderSide(
                      color: Colors.pink,
                      width: 5.0,
                    ),
                  ),
                ), //fin de el decoration box
              ), //fin de el container foto
              SizedBox(
                height: 50,
              ),
              Container(
                height: 100,
                width: 200,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "6-J Programacion",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                        width: 5.0,
                      ),
                    ),
                    //! Change the Focused Border
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.yellow,
                        width: 5.0,
                      ),
                    ),
                  ),
                ),
              ), //fin del contenedor grupo y especialidad
            ], //fin del children
          ), //fin de la columna
        ), //fin bodycenter
      ), //finsingle
    ); //fin del scaffold
  } //fin build widged
} //fin clase pagina de inicio
