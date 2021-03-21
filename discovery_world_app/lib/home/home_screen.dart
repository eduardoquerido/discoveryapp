import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Countries'),
        ),
        body: buildListView(),
      ),
    );
  }

  buildListView() => ListView(
        children: [
          _tile('Nome do País', 'Nome da Capital', Icons.flag),
          Divider(),
          _tile('Nome do País', 'Nome da Capital', Icons.flag),
          Divider(),
          _tile('Nome do País', 'Nome da Capital', Icons.flag),
          Divider(),
          _tile('Nome do País', 'Nome da Capital', Icons.flag),
          Divider(),
          _tile('Nome do País', 'Nome da Capital', Icons.flag),
          Divider(),
          _tile('Nome do País', 'Nome da Capital', Icons.flag),
          Divider(),
          _tile('Nome do País', 'Nome da Capital', Icons.flag),
          Divider(),
          _tile('Nome do País', 'Nome da Capital', Icons.flag),
          Divider(),
          _tile('Nome do País', 'Nome da Capital', Icons.flag),
          Divider(),
          _tile('Nome do País', 'Nome da Capital', Icons.flag),
          Divider(),
        ],
      );
  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
        title: Text(title,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
        subtitle: Text(subtitle),
        leading: Icon(icon, color: Colors.blue[500]),
      );
}
