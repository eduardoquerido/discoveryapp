import 'package:flutter/material.dart';
import '../home/home_screen.dart';
import './create_user.dart';

class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Discovery World'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Image.asset('assets/images/worldlogo.png')
                    ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: 'E-mail',                    
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0
                      ),
                      hintText: 'Insira seu e-mail de login',
                      hintStyle: TextStyle(
                        color: Colors.white70,
                        fontSize: 14.0,
                        
                      ),
                      focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.lightBlue, width: 5.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white70, width: 2.0),
                        ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    style: TextStyle(color: Colors.white),                    
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0
                      ),
                      hintStyle: TextStyle(
                        color: Colors.white70,
                        fontSize: 14.0,
                      ),
                      hintText: 'Insira sua senha de login',                      
                      focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.lightBlue, width: 5.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white70, width: 2.0),
                        ),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.white,
                  child: Text(
                    'Esqueceu sua senha?',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.blueAccent,
                      color: Colors.white,
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 28),
                      ),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);                        
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      }                      
                    )),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text(
                          'N??o possui conta?',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white
                            ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.lightBlue.shade200,
                          ),                          
                          child: Text(
                            'Inscreva-se aqui',
                            style: TextStyle(fontSize: 15),
                          ),
                          onPressed: () {                        
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CreateUserPage()),
                            );
                          }                      
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }
}