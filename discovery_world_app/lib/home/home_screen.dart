import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'country.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
List<Country> _countries = List<Country>();

  Future<List<Country>> fetchCountries() async {
    var url = "https://restcountries.eu/rest/v2/all";
    var response = await http.get(Uri.parse(url));
    var countries = List<Country>();

    if(response.statusCode == 200) {
      var countriesJson = json.decode(response.body);
      for(var countryJson in countriesJson) {
        countries.add(Country.fromJson(countryJson));
      }
      return countries;
    } else {
      throw Exception('Falied to load countries');
    }
  }

  @override
  void initState() {
    fetchCountries().then((value) {
      setState(() {
        _countries.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Countries'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.only(top: 32.0, bottom: 32.0, left: 16.0, right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      _countries[index].name,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    Text(
                      _countries[index].capital,
                      style: TextStyle(
                        color: Colors.grey.shade600
                      )
                    )
                  ],
                )
              )
            );
          },
          itemCount: _countries.length,
        ),
      ),
    );
  }
}
