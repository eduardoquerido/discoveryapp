import 'package:flutter/material.dart';
import 'dart:js';

class Item extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'item',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Countrie'),
        ),
        body: ListView(
          children: [
            Image.asset('assets/images/vancouver_bandeira.png',
                width: 600, height: 240, fit: BoxFit.cover),
            titleSection,
            // buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Vancouver',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Canadá',
                style: TextStyle(color: Colors.grey[500]),
              ),
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[500],
        ),
        Text('9.8'),
      ],
    ),
  );

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }


  // Widget buttonSection = Container(
  //   child: Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //     children: [
  //       _buildButtonColumn(Colors.blue[500], Icons.flag_sharp, 'FLAG'),
  //       _buildButtonColumn(Colors.blue[500], Icons.near_me, 'ROUTE'),
  //       _buildButtonColumn(Colors.blue[500], Icons.share, 'SHARE'),
  //     ],
  //   ),
  // );

  // Color color = Theme.of(context).primaryColor;

  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Text(
      'Vancouver: Atrações Principais '
      'Voo de Hidroavião '
      'Excursão Sem Guia Parque Ponte Suspensa Capilano '
      'Entre Vancouver e Whistler: excursão autoguiada de direção em áudio '
      'Ingresso para a Montanha Grouse '
      'Whistler e Cataratas de Shannon em 1 Dia saindo de Vancouver.',
      softWrap: true,
    ),
  );
}
