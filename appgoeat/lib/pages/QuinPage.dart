import 'package:appgoeat/animations/FadeAnimation.dart';
import 'package:appgoeat/pages/CuarPage.dart';
import 'package:appgoeat/pages/HomePage.dart';
import 'package:appgoeat/pages/SecoPage.dart';
import 'package:appgoeat/pages/StarterPages.dart';
import 'package:appgoeat/pages/TecerPage.dart';
import 'package:appgoeat/view/cuestionario.dart';
import 'package:appgoeat/view/listProducts.dart';
import 'package:appgoeat/view/loginPage.dart';
import 'package:flutter/material.dart';

class QuinPage extends StatefulWidget {
  @override
  _QuinPageState createState() => _QuinPageState();
}

class _QuinPageState extends State<QuinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
       appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.0),
        child: AppBar(
        title: Text("Go eat!"),
        backgroundColor: Colors.yellow[600],
        elevation: 5.0,
        brightness: Brightness.light,
        leading: Icon(null),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => ListProducts(),
          )),
            child: Text("Restaurantes", style: TextStyle(color: Colors.white)),
          ),
          FlatButton(
            onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (BuildContext context) => QuestionaryPage(),
          )),
            child: Text("Cuestionario", style: TextStyle(color: Colors.white)),
          ),
          FlatButton(
            onPressed: () {
              
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginPage()), (Route<dynamic> route) => false);
            },
            child: Text("Cerrar sesión", style: TextStyle(color: Colors.white)),
          ),
        ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(1, Text('Tipo Comida',style: TextStyle(color:  Colors.grey[80], fontWeight: FontWeight.bold,fontSize: 30),)),
                  SizedBox(height: 20,),
                  Container(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        FadeAnimation(1.2, Container(
                          width: 130.0,
                          margin: EdgeInsets.only(right: 10),
                          padding:  EdgeInsets.symmetric(horizontal: 0.0),
                                                  child: RaisedButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => HomePage()), (Route<dynamic> route) => false);
                                                    },
                                                    elevation:  0.0,
                                                    color: Colors.yellow[700],                                                    
                                                    child: Text("Saludable", style: TextStyle(color:  Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                                  ),
                                                )),

                        FadeAnimation(1.3, Container(
                          width: 130.0,
                          margin: EdgeInsets.only(right: 10),
                          padding:  EdgeInsets.symmetric(horizontal: 0.0 ),
                                                  child: RaisedButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => SecoPage()), (Route<dynamic> route) => false);
                                                    },
                                                    elevation:  0.0,
                                                    color: Colors.yellow[700],
                                                    
                                                    child: Text("Italiana", style: TextStyle(color:  Colors.white, fontSize: 18,fontWeight: FontWeight.bold)),
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                                  ),
                                                )),
                        FadeAnimation(1.4, Container(
                          width: 130.0,
                          margin: EdgeInsets.only(right: 10),
                          padding:  EdgeInsets.symmetric(horizontal: 0.0 ),
                                                  child: RaisedButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => TercerPage()), (Route<dynamic> route) => false);
                                                    },
                                                    elevation:  0.0,
                                                    color: Colors.yellow[700],
                                                    
                                                    child: Text("Mexicana", style: TextStyle(color:  Colors.white, fontSize: 18,fontWeight: FontWeight.bold)),
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                                  ),
                                                )),
                        FadeAnimation(1.4, Container(
                          width: 130.0,
                          margin: EdgeInsets.only(right: 10),
                          padding:  EdgeInsets.symmetric(horizontal: 0.0 ),
                                                  child: RaisedButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => CuarPage()), (Route<dynamic> route) => false);
                                                    },
                                                    elevation:  0.0,
                                                    color: Colors.yellow[700],
                                                    
                                                    child: Text("Oriental", style: TextStyle(color:  Colors.white, fontSize: 18,fontWeight: FontWeight.bold)),
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                                  ),
                                                )),
                        FadeAnimation(1.6, Container(
                          width: 130.0,
                          margin: EdgeInsets.only(right: 10),
                          padding:  EdgeInsets.symmetric(horizontal: 0.0 ),
                                                  child: RaisedButton(
                                                    onPressed: () {
                                                      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => QuinPage()), (Route<dynamic> route) => false);
                                                    },
                                                    elevation:  0.0,
                                                    color: Colors.yellowAccent[700],
                                                    
                                                    child: Text("Americana", style: TextStyle(color:  Colors.black87, fontSize: 18,fontWeight: FontWeight.bold)),
                                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                                                  ),
                                                )),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            FadeAnimation(1, Padding(
              padding: EdgeInsets.all(20),
              child: Text('Elige tu comida:',style: TextStyle(color: Colors.grey[700],fontSize: 20,fontWeight: FontWeight.bold),),
            )),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    FadeAnimation(1.4, makeItem(image: 'assets/images/hambur.jpg')),
                    FadeAnimation(1.5, makeItem(image: 'assets/images/hotdog.jpg')),
                    FadeAnimation(1.6, makeItem(image: 'assets/images/pollo.jpg')),
                    FadeAnimation(1.7, makeItem(image: 'assets/images/salchi.jpg')),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  Widget makeCategory({isActive , title}){
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.yellow[700] : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          child: Text(title, style: TextStyle(color: isActive ? Colors.white : Colors.grey[500],fontSize: 18,fontWeight: isActive ? FontWeight.bold : FontWeight.w100),),
        ),
      ),
    );
  }

  Widget makeItem({image}){
    return AspectRatio(
      aspectRatio: 1 / 1.5,
      child: RawGestureDetector(
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            )
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                stops: [.2, .9],
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.3),
                ]
                )
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.favorite, color: Colors.white,),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Desde", style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text("\$ 10.000 a \$ 30.000", style: TextStyle(color: Colors.white, fontSize: 15,fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text("Platos Americanos", style: TextStyle(color: Colors.white, fontSize: 20),),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}