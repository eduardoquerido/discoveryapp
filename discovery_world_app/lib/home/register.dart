import 'package:flutter/material.dart';

class Registers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.all(10),
          child: Text("Certo"),
        ),
      ),
    );
  }
}
