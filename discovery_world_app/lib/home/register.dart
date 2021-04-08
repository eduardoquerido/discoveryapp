import 'package:flutter/material.dart';

class Registers extends StatelessWidget {
  // Definir/ nomear rota:
  static String tag = '/informations';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informações Cadastradas'),
      ),
      body: StreamBuilder(
        // Buscando os dados do Firebase:
        stream: Firestore.instance.collections('informations').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          return ListView();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => null,
        tooltip: 'Adicionar novca Informação',
        child: Icon(Icons.add),
      ),
    );
  }
}
