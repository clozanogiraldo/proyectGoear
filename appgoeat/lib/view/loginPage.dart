import 'dart:convert';

import 'package:appgoeat/pages/StarterPages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:appgoeat/view/registerPage.dart';
import 'package:appgoeat/pages/StarterPages.dart';
import '../main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
 
}

class _LoginPageState extends State<LoginPage> {


  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.yellow[200], Colors.yellow, Colors.yellow[900]],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: _isLoading ? Center(child: CircularProgressIndicator()) : ListView(
          children: <Widget>[
            logo(),
            textSection(),
            buttonSection(),
            textRegister(),
            buttonRegister(), 
          ],
        ),
      ),
    );
  }

  signIn(String email, pass) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {
      'email': email,
      'password': pass
    };
    var jsonResponse = null;

    var response = await http.post("http://192.168.0.114:3000/signin", body: data);
    if(response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      if(jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        sharedPreferences.setString("token", jsonResponse['token']);
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => StarterPage()), (Route<dynamic> route) => false);
      }
    }
    else {
      setState(() {
        _isLoading = false;
      });
      print(response.body);
    }
  }

  Container buttonSection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 80.0),
      margin: EdgeInsets.only(top: 15.0),
      child: RaisedButton(    
        //emailController.text == "" || passwordController.text == "" ? null : 
        onPressed:  () {
          setState(() {
            _isLoading = true;
          });
          signIn(emailController.text, passwordController.text);
        },
        elevation: 0.0,
        color: Colors.orange[900],
        child: Text("Iniciar Sesion", style: TextStyle(color: Colors.white)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
  Container buttonRegister() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 110.0),
      margin: EdgeInsets.only(top: 10.0),
      child: RaisedButton(
        onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => RegisterPage(),
          )),
        elevation: 0.0,
        color: Colors.orange[900],
        child: Text("Registrarse", style: TextStyle(color: Colors.white)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
  Container logo() {
    return Container(
     
      child: ClipOval(
        child: Image.asset('assets/logo.jpg'),   
      ), 
      padding: EdgeInsets.only(left:100.0,top:20.0,right: 100.0, bottom: 0.0),
      
    );
  }

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  Container textSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: emailController,
            cursorColor: Colors.white,

            style: TextStyle(color: Colors.orange[900]),
            decoration: InputDecoration(
              icon: Icon(Icons.email, color: Colors.yellow[900]),
              hintText: "Email",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.yellow[900])),
              hintStyle: TextStyle(color: Colors.yellow[900]),
            ),
          ),
          SizedBox(height: 30.0),
          TextFormField(
            controller: passwordController,
            cursorColor: Colors.white,
            obscureText: true,
            style: TextStyle(color: Colors.orange[900]),
            decoration: InputDecoration(
              icon: Icon(Icons.lock, color: Colors.yellow[900]),
              hintText: "Contraseña",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.yellow[900])),
              hintStyle: TextStyle(color: Colors.yellow[900]),
            ),
          ),
        ],
      ),
    );
  }

  Container textRegister() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Text("¿No tienes cuenta?",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
              fontWeight: FontWeight.bold)),
       
    );
  }
}