import 'dart:convert';
import 'package:appgoeat/controllers/databasehelpers.dart';
import 'package:appgoeat/controllers/databaseusers.dart';
import 'package:appgoeat/main.dart';
import 'package:appgoeat/view/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:appgoeat/view/detail.dart';
import 'package:appgoeat/pages/HomePage.dart';

int cont; 


class QuestionaryPage extends StatefulWidget {

  
  @override
  _QuestionaryPageState createState() => _QuestionaryPageState();
}

class _QuestionaryPageState extends State<QuestionaryPage> {

  int _cont = 0;  
  
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
            textQuestion1(),
            buttonQuestion_1a(),
            buttonQuestion_1b(),
            buttonQuestion_1c(),
            buttonQuestion_1d(),
          ],
        ),
      ),
    );
  }
  Container textQuestion1() {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      child: Text("1. ¿Qué tipo de comida desearía comer hoy?",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.brown,
              fontSize: 20.0,
              fontWeight: FontWeight.bold)),
       
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
   Container buttonQuestion_1a() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => QuestionaryPage2(option1: "Comida Italiana"),
          )),
        
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("a. Comida Italiana", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
  Container buttonQuestion_1b() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => QuestionaryPage2(option1: "Comida Mexicana"),
          )),
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("b. Comida Mexicana", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
  Container buttonQuestion_1c() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => QuestionaryPage2(option1: "Comida Oriental",),
          )),
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("c. Comida Oriental", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
  Container buttonQuestion_1d() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => QuestionaryPage2(option1: "Comida Americana"),
          )),
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("d. Comida Americana", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
 
}

// ---------------------------------pregunta 2---------------------------------
class QuestionaryPage2 extends StatefulWidget {
  
  final String option1;
  QuestionaryPage2({this.option1});
  
  @override
  _QuestionaryPage2 createState() => _QuestionaryPage2();
}

class _QuestionaryPage2 extends State<QuestionaryPage2> {

    TextEditingController controllerOptional;
  
  @override
  void initState() { 

    controllerOptional= new TextEditingController(text: widget.option1.toString() );
    super.initState();
    
  }  
  
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
            textQuestion2(),
            buttonQuestion_2a(),
            buttonQuestion_2b(),
            buttonQuestion_2c(),
            buttonQuestion_2d(),  
          ],
        ),
      ),
    );
  }
  Container textQuestion2() {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      child: Text("2. ¿En que parte de la ciudad preferirías comer?",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.brown,
              fontSize: 20.0,
              fontWeight: FontWeight.bold)),
       
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
   Container buttonQuestion_2a() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => QuestionaryPage3(option1: widget.option1, option2: "Norte"),
          )),
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("a. Norte", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
  Container buttonQuestion_2b() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => QuestionaryPage3(option1: widget.option1, option2: "Sur"),
          )),
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("b. Sur", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
  Container buttonQuestion_2c() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => QuestionaryPage3(option1: widget.option1, option2: "Este"),
          )),
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("c. Este", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
  Container buttonQuestion_2d() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => QuestionaryPage3(option1: widget.option1, option2: "Oeste"),
          )),
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("d. Oeste", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
}

// ---------------------------------pregunta 3---------------------------------

class QuestionaryPage3 extends StatefulWidget {

   final String option1;
   final String option2;

  QuestionaryPage3({this.option1, this.option2});

  @override
  _QuestionaryPage3 createState() => _QuestionaryPage3();
}
  

class _QuestionaryPage3 extends State<QuestionaryPage3> {

  TextEditingController controllerOptional;
  TextEditingController controllerOptional2;

  @override
  void initState() { 
    controllerOptional= new TextEditingController(text: widget.option1.toString() );
    controllerOptional2= new TextEditingController(text: widget.option2.toString() );
    super.initState();
    
  }  
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
            textQuestion3(),
            buttonQuestion_3a(),
            buttonQuestion_3b(),
            buttonQuestion_3c(),
          ],
        ),
      ),
    );
  }
  Container textQuestion3() {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      child: Text("3. ¿Cuánto dinero estas dispuesto a pagar ?",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.brown,
              fontSize: 20.0,
              fontWeight: FontWeight.bold)),
       
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
   
  Container buttonQuestion_3a() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => QuestionaryPage4(option1: widget.option1, option2: widget.option2, option3: "(25.000 - 35.000)"),
          )),
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("b. (25.000 - 35.000)", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
  Container buttonQuestion_3b() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => QuestionaryPage4(option1: widget.option1, option2: widget.option2, option3: "(35.000 - 45.000)"),
          )),
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("c. (35.000 - 45.000)", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
  Container buttonQuestion_3c() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => QuestionaryPage4(option1: widget.option1, option2: widget.option2, option3: "Mas de 45.000"),
          )),
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("d. Más de 45.000", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
}

// ---------------------------------pregunta 4---------------------------------

class QuestionaryPage4 extends StatefulWidget {
  final String option1;
  final String option2;
  final String option3;

  QuestionaryPage4({this.option1, this.option2, this.option3});

  @override
  _QuestionaryPage4 createState() => _QuestionaryPage4();
}

class _QuestionaryPage4 extends State<QuestionaryPage4> {
  TextEditingController controllerOptional;
  TextEditingController controllerOptional2;
  TextEditingController controllerOptional3;
  @override
  void initState() { 
    controllerOptional= new TextEditingController(text: widget.option1.toString() );
    controllerOptional2= new TextEditingController(text: widget.option2.toString() );
    controllerOptional3= new TextEditingController(text: widget.option3.toString() );
    super.initState();
    
  }  
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
            textQuestion4(),
            buttonQuestion_4a(),
            buttonQuestion_4b(),          
          ],
        ),
      ),
    );
  }
  Container textQuestion4() {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      child: Text("4. ¿En qué tipo de ambiente te gustaría comer?",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.brown,
              fontSize: 20.0,
              fontWeight: FontWeight.bold)),
       
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
   Container buttonQuestion_4a() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => QuestionaryPage5(option1: widget.option1, option2: widget.option2, option3: widget.option3, option4: "Elegante"),
          )),
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("a. Elegante", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
  Container buttonQuestion_4b() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => QuestionaryPage5(option1: widget.option1, option2: widget.option2, option3: widget.option3, option4: "Casual"),
          )),
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("b. Casual", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
}

// ---------------------------------pregunta 5---------------------------------

class QuestionaryPage5 extends StatefulWidget {
  final String option1;
  final String option2;
  final String option3;
  final String option4;

  QuestionaryPage5({this.option1, this.option2, this.option3, this.option4});

  @override
  _QuestionaryPage5 createState() => _QuestionaryPage5();
}

class _QuestionaryPage5 extends State<QuestionaryPage5> {
  TextEditingController controllerOptional;
  TextEditingController controllerOptional2;
  TextEditingController controllerOptional3;
  TextEditingController controllerOptional4;
  @override
  void initState() { 
    controllerOptional= new TextEditingController(text: widget.option1.toString() );
    controllerOptional2= new TextEditingController(text: widget.option2.toString() );
    controllerOptional3= new TextEditingController(text: widget.option3.toString() );
    controllerOptional4= new TextEditingController(text: widget.option3.toString() );
    super.initState();
  }  
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
            textQuestion5(),
            buttonQuestion_5a(),
            buttonQuestion_5b(),
          ],
        ),
      ),
    );
  }
  Container textQuestion5() {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      child: Text("5. ¿Se realizará algun evento?",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.brown,
              fontSize: 20.0,
              fontWeight: FontWeight.bold)),
       
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
   Container buttonQuestion_5a() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => QuestionaryPage6(option1: widget.option1, option2: widget.option2, option3: widget.option3, option4: widget.option4, option5: "Sí"),
          )),
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("a. Sí", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
  Container buttonQuestion_5b() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () => QuestionaryPage6(option1: widget.option1, option2: widget.option2, option3: widget.option3, option4: widget.option4, option5: "Sí"),
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("b. No", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
}
// ---------------------------------pregunta 6---------------------------------

class QuestionaryPage6 extends StatefulWidget {

  final String option1;
  final String option2;
  final String option3;
  final String option4;
  final String option5;

  QuestionaryPage6({this.option1, this.option2, this.option3, this.option4, this.option5});
  @override
  _QuestionaryPage6 createState() => _QuestionaryPage6();
}

class _QuestionaryPage6 extends State<QuestionaryPage6> {

  TextEditingController controllerOptional;
  TextEditingController controllerOptional2;
  TextEditingController controllerOptional3;
  TextEditingController controllerOptional4;
  TextEditingController controllerOptional5;

  DataBaseHelper databaseHelper = new DataBaseHelper(); 
  void validator(String food, String location, String price, String environment, String event){
   int i = 0; 
   String restaurant; 
   String description; 
   if (food == "Comida Italiana"){
     print("entreee22222222");
     if(location == "Norte"){
       if(price == "(25.000 - 35.000)"){
         if(environment == "Casual"){
             restaurant =  "Restaurante Balooco";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
           restaurant =  "Restaurante Tortelli Santa Mónica";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "(35.000 - 45.000)"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante Tortelli Santa Mónica";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
            restaurant =  "Restaurante Balooco";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "Mas de 45.000"){
         if(environment == "Elegante"){
             restaurant =  "La Trattorina";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
           
         }
         else{
            restaurant =  "Restaurante Balooco";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
     }
     if(location == "Sur"){
       if(price == "(25.000 - 35.000)"){
         if(environment == "Casual"){
             restaurant =  "Restaurante Tortelli Palmas Mall";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
           restaurant =  "Restaurante Salerno pizzeria & restaurante";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "(35.000 - 45.000)"){
         if(environment == "Elegante"){
            restaurant =  "Restaurante Salerno pizzeria & restaurante";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
            restaurant = "Restaurante Salerno pizzeria & restaurante";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "Mas de 45.000"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante La Tratorrina - Sur";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
           
         }
         else{
            restaurant =  "Restaurante Tortelli Palmas Mall";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
     }
     if(location == "Este"){
       if(price == "(25.000 - 35.000)"){
         if(environment == "Casual"){
             restaurant =  "Restaurante Il Forno";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
           restaurant =  "II Calzone pizzeria Ristorante";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "(35.000 - 45.000)"){
         if(environment == "Elegante"){
            restaurant =  "II Calzone pizzeria Ristorante";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
            restaurant = "Restaurante Il Forno";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
      else{
        if(environment == "Casual"){
           restaurant =  "Restaurante Il Forno";
            description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
        }
        else{
         restaurant =  "II Calzone pizzeria Ristorante";
         description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
        }
      }
     }
     if(location == "Oeste"){
       if(price == "(25.000 - 35.000)"){
         if(environment == "Casual"){
             restaurant =  "Restaurante La Diva";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
           restaurant =  "Restaurante Pulcinella";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "(35.000 - 45.000)"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante Pulcinella";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
            restaurant =  "Restaurante Tortelli Peñon";
            description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "Mas de 45.000"){
         if(environment == "Elegante"){
             restaurant =  "Pulcinella";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
           
         }
         else{
            restaurant =  "Restaurante Tortelli el peñon";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
     }
   }

   //___________________________________________MEXICANA_________________________________
   if (food == "Comida Mexicana"){
     if(location == "Norte"){
       if(price == "(25.000 - 35.000)"){
         if(environment == "Casual"){
             restaurant =  "Restaurante D`toluca Norte";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
           restaurant =  "Restaurante Salsa Cocina Fusion";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "(35.000 - 45.000)"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante Salsa Cocina Fusion ";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
            restaurant =  "Restaurante D`toluca Norte";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "Mas de 45.000"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante Salsa Cocin Fusion";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
           
         }
         else{
            restaurant =  "Restaurante D`toluca Norte";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
     }
     if(location == "Sur"){
       if(price == "(25.000 - 35.000)"){
         if(environment == "Casual"){
             restaurant =  "Restaurante Butacos Sur";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
           restaurant =  "Restaurante Butacos Sur";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "(35.000 - 45.000)"){
         if(environment == "Elegante"){
            restaurant =  "Restaurante La hija del canastero";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
            restaurant = "Restaurante Taco Will BAR";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "Mas de 45.000"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante La hija del canastero";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
           
         }
         else{
            restaurant =  "Restaurante Taco Will BAR";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
     }
     if(location == "Este"){
       if(price == "(25.000 - 35.000)"){
         if(environment == "Casual"){
             restaurant =  "Restaurante D`toluca Norte";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
           restaurant =  "Restaurante Salsa Cocina Fusion";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "(35.000 - 45.000)"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante Salsa Cocina Fusion ";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
            restaurant =  "Restaurante D`toluca Norte";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "Mas de 45.000"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante Salsa Cocin Fusion";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
           
         }
         else{
            restaurant =  "Restaurante D`toluca Norte";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
     }
     if(location == "Oeste"){
        restaurant =  "Cocina Artesanal Mexicana";
        description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
     }
   }
   //______________________________________________Oriental__________________________________
   if (food == "Comida Oriental"){
     if(location == "Norte"){
       if(price == "(25.000 - 35.000)"){
         if(environment == "Casual"){
             restaurant =  "Restaurante Fusion Wok";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
           restaurant =  "Restaurante Panda Wok";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "(35.000 - 45.000)"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante Panda Wok";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
            restaurant =  "Restaurante Fusion Wok";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "Mas de 45.000"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante Sushi green";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
           
         }
         else{
            restaurant =  "Restaurante Fusion Wok";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
     }
     if(location == "Sur"){
       if(price == "(25.000 - 35.000)"){
         if(environment == "Casual"){
             restaurant =  "Restaurante Arroz Wok Fusion";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
           restaurant =  "Restaurante Arroz Wok Fusion";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "(35.000 - 45.000)"){
         if(environment == "Elegante"){
            restaurant =  "Restaurante Sushi green Sur";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
            restaurant = "Restaurante  Comida Coreana Urimuri";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "Mas de 45.000"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante Sushi green  Sur";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
           
         }
         else{
            restaurant =  "Restaurante  Comida Coreana Urimuri";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
     }
     if(location == "Este"){
       if(price == "(25.000 - 35.000)"){
         if(environment == "Casual"){
             restaurant =  "Restaurante Sayori Express";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
           restaurant =  "Restaurante Sayori Express";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
      else{
        if(environment == "Casual"){
           restaurant =  "Restaurante Sayori Express";
            description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
        }
        else{
         restaurant =  "Restaurante Fit Lunch";
         description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
        }
      }
     }
     if(location == "Oeste"){
       if(price == "(25.000 - 35.000)"){
         if(environment == "Casual"){
             restaurant =  "Restaurante Sushigood Peñon";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
           restaurant =  "Restaurante Sushigood Peñon";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "(35.000 - 45.000)"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante Casa ibérica";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
            restaurant =  "Restaurante Sushi Market Peñon";
            description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "Mas de 45.000"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante Casa ibérica";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
           
         }
         else{
            restaurant =  "Restaurante Sushi Market Peñon";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
     }
   }
     //_________________________________________________Americana________________________________________
    print(food);
    print(location);
    print(price);
    print(environment);

     if (food == "Comida Americana"){
     if(location == "Norte"){
       if(price == "(25.000 - 35.000)"){
         if(environment == "Casual"){
             restaurant =  "Restaurante Hooters";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
           restaurant =  "Restaurante Tasca Norte";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "(35.000 - 45.000)"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante Tazca Norte";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
            restaurant =  "Restaurante Hooter";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "Mas de 45.000"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante Tizones";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
           
         }
         else{
            restaurant =  "Restaurante Hooters";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
     }
     if(location == "Sur"){
       if(price == "(25.000 - 35.000)"){
         if(environment == "Casual"){
             restaurant =  "Restaurante Alitas Factory";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
           restaurant =  "Restaurante Alitas Factory";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "(35.000 - 45.000)"){
         if(environment == "Elegante"){
            restaurant =  "Restaurante La boqueria Sur";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
            restaurant = "Restaurante  Mr Wings Sur ";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "Mas de 45.000"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante La boqueria Sur";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
           
         }
         else{
            restaurant =  "Restaurante Mr Wings Sur";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
     }
     if(location == "Este"){
        if(price == "(25.000 - 35.000)"){
         if(environment == "Casual"){
             restaurant =  "Restaurante Hooters";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
           restaurant =  "Restaurante Tasca Norte";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "(35.000 - 45.000)"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante Tazca Norte";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
            restaurant =  "Restaurante Hooter";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "Mas de 45.000"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante Tizones";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
           
         }
         else{
            restaurant =  "Restaurante Hooters";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
     }
     if(location == "Oeste"){
       if(price == "(25.000 - 35.000)"){
         if(environment == "Casual"){
             restaurant =  "Restaurante El Gringo";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
           restaurant =  "Restaurante El Gringo";
           description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "(35.000 - 45.000)"){
         if(environment == "Elegante"){
             restaurant =  "Restaurante El Mono Ahumeria y Refresqueria";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
         else{
            restaurant =  "Restaurante Chef Burguer";
            description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
       if(price == "Mas de 45.000"){
         if(environment == "Elegante"){
             restaurant = "Restaurante El Mono Ahumeria y Refresqueria";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
           
         }
         else{
            restaurant =  "Restaurante Chef Burguer";
             description = "Este restaurante es el que mas se ajusta a tus necesidades actuales, para mayor información  consulta en  nuestra lista de restaurantes";
         }
       }
     }
   }
   
   
   AlertDialog alertDialog = new AlertDialog(
    backgroundColor: Colors.transparent,
    actions: <Widget>[
      new RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        child: new Text("¡Hemos encontrado el restaurante perfecto para ti!",style: new TextStyle(color: Colors.black),),
        color: Colors.orange[900],
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(restaurant),
              content: Text(description),
              actions: <Widget>[
                FlatButton(
                  child: Text('OK'),
                  onPressed: (){  
                    Navigator.of(context).push(
                      new MaterialPageRoute(
                      builder: (BuildContext context) => new HomePage(),
                      )
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    ],
  );

  showDialog(context: context, child: alertDialog);
 }
  Future<List> getData() async {
    final response = await http.get("http://192.168.0.114:3000/products");
    return json.decode(response.body);
  }
  List a = [{"5ece9e25d1038b03ac1ea4ab", "2020-05-27T17:06:45.833Z", "name: Mr frito", "direction: cra 56 # 3 - 26", "phone: 3122599810", "food: Comida Italiana", "location: Norte", "price: (15.000 - 25.000)", "event: Aniversario", "environment: Elegante"}];

  @override

  @override
  void initState() { 
    controllerOptional= new TextEditingController(text: widget.option1.toString() );
    controllerOptional2= new TextEditingController(text: widget.option2.toString() );
    controllerOptional3= new TextEditingController(text: widget.option3.toString() );
    controllerOptional4= new TextEditingController(text: widget.option3.toString() );
    controllerOptional5= new TextEditingController(text: widget.option3.toString() );
    super.initState();
  }  

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
            textQuestion6(),
            buttonQuestion_6a(),
            buttonQuestion_6b(),
            buttonQuestion_6c(),
            buttonQuestion_6d(),
          ],
        ),
      ),
    );
  }
  Container textQuestion6() {
    return Container(
      margin: EdgeInsets.only(top: 15.0),
      child: Text("6. ¿Qué tipo de evento desea realizar?",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.brown,
              fontSize: 20.0,
              fontWeight: FontWeight.bold)),
       
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
   Container buttonQuestion_6a() {
     print(a);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        
        onPressed: () => validator(widget.option1,widget.option2,widget.option3,widget.option4,"Cumpleanos"),
          //databaseHelper.buscarProducto(widget.option1, widget.option2, widget.option3, widget.option4, "Cumpleanos");
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("a. Cumpleaños", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
  Container buttonQuestion_6b() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () => validator(widget.option1,widget.option2,widget.option3,widget.option4,"Cita romantica"),
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("b. Cita romantica", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
  Container buttonQuestion_6c() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () => validator(widget.option1,widget.option2,widget.option3,widget.option4,"Empresarial"),
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("c. Empresarial", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
  Container buttonQuestion_6d() {
    return Container( 
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 50.0),
      margin: EdgeInsets.only(top: 30.0),
      child: RaisedButton(
        onPressed: () =>validator(widget.option1,widget.option2,widget.option3,widget.option4,"Aniversario"),
        elevation: 5.0,
        color: Colors.orange[900],
        child: Text("d. Aniversario", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
      ),
    );
  }
   
}

