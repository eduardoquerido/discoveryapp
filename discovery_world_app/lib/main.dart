import 'package:flutter/material.dart';
import 'discovery/login_screen.dart';
import 'home/home_screen.dart';
import 'home/informations_items.dart';
import 'home/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remover banner debug:
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      // Definindo rotas:
      initialRoute: Registers.tag,
      // Declarando a Rota e a pagina correspondente:
      routes: {Registers.tag: (context) => Registers()},
    );
  }
}
