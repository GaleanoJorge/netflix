import 'package:clone_netflix/componentes/nav_bar_superior.dart';
import 'package:flutter/material.dart';

class CartelPrincipal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        this.cabecera(),

        this.infoSerie(),

        this.botonera(),

      ],
    );
  }

  Widget cabecera() {
    return Stack(
          children: <Widget>[

            Image.network(
              'https://images-na.ssl-images-amazon.com/images/I/81KDv3MIbPL._SX268_.jpg',
              height: 350.0,
              fit: BoxFit.cover,),

              /**Degradado de color de la imagen hecho co un container sobre puesto */
              Container(
                width: double.infinity,
                height: 350.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: <Color>[
                      Colors.black38,
                      Colors.black
                    ]
                  ),
                ),
              ),

            SafeArea(
              child: NavBarSuperior(),
            ),

          ],
        );
  }

  Widget infoSerie() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Anime', 
          style: TextStyle(color: Colors.white, fontSize: 10.0),),
        SizedBox(width: 6.0,),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0,),
        SizedBox(width: 6.0,),
        Text(
          'Seinen', 
          style: TextStyle(color: Colors.white, fontSize: 10.0),),
          SizedBox(width: 6.0,),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0,),
        SizedBox(width: 6.0,),
        Text(
          'Shonen', 
          style: TextStyle(color: Colors.white, fontSize: 10.0),),
          SizedBox(width: 6.0,),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0,),
        SizedBox(width: 6.0,),
        Text(
          'Favoritos', 
          style: TextStyle(color: Colors.white, fontSize: 10.0),),
      ],
    );
  }

  Widget botonera() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),

      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        Column(
          children: <Widget>[
            Icon(Icons.check, color: Colors.white,),
            SizedBox(height: 3.0,),
            Text(
              'Mi lista', 
              style: TextStyle(
                color: Colors.white, 
                fontSize: 10.0),),
          ],
        ),

        FlatButton.icon(
          onPressed: (){}, 
          color: Colors.white,
          icon: Icon(
            Icons.play_arrow, 
            color: Colors.black,), 
          label: Text('Reproducir')),

        Column(
          children: <Widget>[
            Icon(Icons.info_outline, color: Colors.white,),
            SizedBox(height: 3.0,),
            Text(
              'Información', 
              style: TextStyle(
                color: Colors.white, 
                fontSize: 10.0),),
          ],
        ),
        
      ],
    ),
    );
  }
}