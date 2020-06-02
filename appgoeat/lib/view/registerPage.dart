import 'package:appgoeat/controllers/databaseusers.dart';
import 'package:appgoeat/main.dart';
import 'package:flutter/material.dart';
import 'package:appgoeat/view/loginPage.dart';


class RegisterPage extends StatefulWidget {

  
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  DataBaseUsers databaseUsers = new DataBaseUsers();


  final TextEditingController _nameController = new TextEditingController();  
  final TextEditingController _passwordController = new TextEditingController();
  final TextEditingController _passworddController = new TextEditingController();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _phoneController = new TextEditingController();

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.yellow[200], Colors.yellow, Colors.yellow[900]],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: ListView(
          children: <Widget>[
            logo(),
            textRegister(),
            textSection(),
            buttonRegister(),
          ],
        ),
      ),
    );
  }
  Container textRegister() {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      child: Text("Registro",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.brown,
              fontSize: 40.0,
              fontWeight: FontWeight.bold)),
       
    );
  }

  Container textSection() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _nameController, 
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.orange[900]),
            decoration: InputDecoration(
              icon: Icon(Icons.account_circle, color: Colors.orange[900]),
              hintText: "Nombres",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.orange[900])),
              hintStyle: TextStyle(color: Colors.orange[900]),
            ),
          ),
          SizedBox(height: 15.0),
          TextFormField(
            controller: _passwordController,
            cursorColor: Colors.white,
            obscureText: true,
            style: TextStyle(color: Colors.orange[900]),
            decoration: InputDecoration(
              icon: Icon(Icons.lock, color: Colors.orange[900]),
              hintText: "Contraseña",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.orange[900])),
              hintStyle: TextStyle(color: Colors.orange[900]),
            ),
          ),
          SizedBox(height: 15.0),
          TextFormField(
            controller: _passworddController,
            cursorColor: Colors.white,
            obscureText: true,
            style: TextStyle(color: Colors.orange[900]),
            decoration: InputDecoration(
              icon: Icon(Icons.lock, color: Colors.orange[900]),
              hintText: "Repetir Contraseña",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.orange[900])),
              hintStyle: TextStyle(color: Colors.orange[900]),
            ),
          ),
          SizedBox(height: 15.0),
          TextFormField(
            controller: _emailController,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.orange[900]),
            decoration: InputDecoration(
              icon: Icon(Icons.email, color: Colors.orange[900]),
              hintText: "Email",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.orange[900])),
              hintStyle: TextStyle(color: Colors.orange[900]),
            ),
          ),
          SizedBox(height: 15.0),
          TextFormField(
            controller: _phoneController,
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.orange[900]),
            decoration: InputDecoration(
              icon: Icon(Icons.phone, color: Colors.orange[900]),
              hintText: "Telefono",
              border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.orange[900])),
              hintStyle: TextStyle(color: Colors.orange[900]),
            ),
          ),
        ],
      ),
    );
  }
  Container logo() {
    return Container(
     
      child: ClipOval(
        child: Image.asset('assets/logo.jpg'),   
      ), 
      padding: EdgeInsets.only(left:150.0,top:20.0,right: 150.0, bottom: 0.0),
      
    );
  }
  Container buttonRegister() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      margin: EdgeInsets.only(top: 10.0),
      child: RaisedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Nuevo usuario'),
              content: Text('Se ha registrado exitosamente'),
              actions: <Widget>[
                FlatButton(
                  child: Text('OK'),
                  onPressed: (){
                    databaseUsers.addDataUser(_nameController.text.trim(), _passwordController.text.trim(), _emailController.text.trim(), _phoneController.text.trim());
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                      builder: (BuildContext context) => new LoginPage(),
                      )
                    );
                  },
                ),
              ],
            ),
          );
        },
        elevation: 0.0,
        color: Colors.orange[900],
        child: Text("Registrarse", style: TextStyle(color: Colors.white)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
}