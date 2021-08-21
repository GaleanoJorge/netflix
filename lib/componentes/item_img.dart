import 'package:flutter/material.dart';

class ItemImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[

        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Image.network(
              'https://images.everyeye.it/img-articoli/dr-stone-recensione-stagione-dell-anime-crunchyroll-recensione-v6-46727-1280x16.jpg',
              width: 110.0,
              height: 110.0,
              fit: BoxFit.cover,),
            
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/2/2a/Dr._Stone_Logo.png',
              width: 100.0,)
          ],
        ),

        SizedBox(width: 10.0,)
      ],
    );
  }
}