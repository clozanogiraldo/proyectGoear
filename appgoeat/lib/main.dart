  
import 'dart:convert';
import 'package:appgoeat/view/addProducts.dart';
import 'package:appgoeat/view/cuestionario.dart';
import 'package:appgoeat/view/listProducts.dart';
import 'package:appgoeat/view/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Proyecto Go eat!",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: ThemeData(
        accentColor: Colors.white70
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if(sharedPreferences.getString("token") == null) {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginPage()), (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Go eat!", style: TextStyle(color: Colors.white)),
        backgroundColor:  Colors.yellow[900],
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              sharedPreferences.clear();
              sharedPreferences.commit();
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginPage()), (Route<dynamic> route) => false);
            },
            child: Text("Salir", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: Center(child: Text("")),
      backgroundColor: Colors.yellow[500],
      drawer: Drawer(
        child: Container( 
        child: new ListView(
              children: <Widget>[
                
                new ListTile(
                  title: new Text("Restaurantes"),
                  trailing: new Icon(Icons.restaurant),
                  onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => ListProducts(),
                  )),
                  ),
              
                 new ListTile(
                  title: new Text("Añadir Restaurantes"),
                  trailing: new Icon(Icons.plus_one),
                  onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => AddDataProduct(),
                  )),
                  ),
              
                 new ListTile(
                  title: new Text("Cuestionario"),
                  trailing: new Icon(Icons.edit),
                  onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => QuestionaryPage(),
                  )),
                  ),                
              ],
      ),
      ),
      ),
    );
  }
}