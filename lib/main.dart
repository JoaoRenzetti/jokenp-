import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int numero;
  int valor;
  bool existe = false;
  bool existe1 = false;
  void gerarRadom() {
    Random random = new Random();
    setState(() {
      numero = random.nextInt(4);
       if(valor == 3 && numero == 2)
         existe = true;
       if(valor == 2 && numero == 1)
         existe = true;
       if(valor == 3 && numero == 2)
         existe = true;
       if(numero == valor) 
         existe1 = true;
         print(existe);
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Jokenpô"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh),
          onPressed: () {},)
        ],
      ),
      backgroundColor: Colors.purple,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
          Container(
            width: 150,
            height:150,
            child:Image.asset('assets/imagens/pedra.png'),
            ),
            Container(
            width: 150,
            height:150,
            child:Image.asset('assets/imagens/papel.png'),
            ),
            Container(
            width: 150,
            height:150,
            child:Image.asset('assets/imagens/tesoura.png'),
            ),
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipOval(
                  child: Material(
                  color: Colors.green, // button color
                  child: InkWell(
                    splashColor: Colors.red, // inkwell color
                    child: SizedBox(width: 56, height: 56, child: Icon(Icons.add )),
                    onTap: () {
                      valor = 1;
                      gerarRadom();},
                  ),
                ),
              ),  ClipOval(
                  child: Material(
                  color: Colors.green, // button color
                  child: InkWell(
                    splashColor: Colors.red, // inkwell color
                    child: SizedBox(width: 56, height: 56, child: Icon(Icons.add)),
                    onTap: () {
                      valor = 2;
                      gerarRadom();},
                  ),
                ),
              ),  ClipOval(
                  child: Material(
                  color: Colors.green, // button color
                  child: InkWell(
                    splashColor: Colors.red, // inkwell color
                    child: SizedBox(width: 56, height: 56, child: Icon(Icons.add)),
                    onTap: () {
                      valor = 3;
                      gerarRadom();},
                  ),
                ),
              ),
            ],
          ),
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
              if(numero == 1 && existe == true)
                 Container(
                   child:
                   Row(
                     children: [
                       Container(
                          width: 150,
                          height:150,
                          child:Image.asset('assets/imagens/pedra.png'),
                       ),
                       Text("você ganhou!!"),
                     ], 
                   )
                 ),
              if(numero == 2 && existe == true)
              Container(
                   child:
                   Row(
                     children: [
                       Container(
                          width: 150,
                          height:150,
                          child:Image.asset('assets/imagens/papel.png'),
                       ),
                       Text("você ganhou!!"),
                     ], 
                   )
                 ),
              if(numero == 3 && existe == true)
                 Container(
                   child:
                   Row(
                     children: [
                       Container(
                          width: 150,
                          height:150,
                          child:Image.asset('assets/imagens/tesoura.png'),
                       ),
                       Text("você ganhou!!"),
                     ], 
                   )
                 ),
            ],
          ),
        ],
      )
    );
  }
}