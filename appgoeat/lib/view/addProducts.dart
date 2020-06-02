import 'package:appgoeat/controllers/databasehelpers.dart';
import 'package:appgoeat/main.dart';
import 'package:flutter/material.dart';

class AddDataProduct extends StatefulWidget {

  AddDataProduct({Key key , this.title}) : super(key : key);
  final String title;

  @override
  _AddDataProductState createState() => _AddDataProductState();
}

class _AddDataProductState extends State<AddDataProduct> {

  DataBaseHelper databaseHelper = new DataBaseHelper();


  final TextEditingController _nameController = new TextEditingController();  
  final TextEditingController _directionController = new TextEditingController();
  final TextEditingController _phoneController = new TextEditingController();
  final TextEditingController _foodController = new TextEditingController();
  final TextEditingController _locationController = new TextEditingController();
  final TextEditingController _priceController = new TextEditingController();
  final TextEditingController _eventController = new TextEditingController();
  final TextEditingController _environmentController = new TextEditingController();

  



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Añadir Restaurante',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[900],
          title:  Text('Añadir Restaurante'),
        ),
        body: Container(decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.yellow[200], Colors.yellow, Colors.yellow[900]],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
          child: ListView(
            padding: const EdgeInsets.only(top: 10,left: 12.0,right: 12.0,bottom: 5.0),
            children: <Widget>[
              
              Container(

                height: 50,
                child: new TextField(
                  controller: _nameController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Nombre',
                    icon: new Icon(Icons.restaurant_menu),
                  ),
                ),
              ),

              Container(
                height: 50,
                margin: EdgeInsets.only(top: 5.0),
                child: new TextField(
                  controller: _directionController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Direccion',
                    icon: new Icon(Icons.directions),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 5.0),
                child: new TextField(
                  controller: _phoneController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Teléfono',
                    icon: new Icon(Icons.phone),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 5.0),
                child: new TextField(
                  controller: _foodController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Tipo de Comida',
                    icon: new Icon(Icons.fastfood),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 5.0),
                child: new TextField(
                  controller: _locationController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Ubicación',
                    icon: new Icon(Icons.location_on),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 5.0),
                child: new TextField(
                  controller: _priceController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Rango de precio por plato',
                    icon: new Icon(Icons.attach_money),
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 5.0),
                child: new TextField(
                  controller: _eventController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Eventos',
                    icon: new Icon(Icons.event),
                  ),
                ),
              ),
               Container(
                height: 50,
                margin: EdgeInsets.only(top: 5.0),
                child: new TextField(
                  controller: _environmentController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Ambiente',
                    icon: new Icon(Icons.toys),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 100.0),
                margin: EdgeInsets.only(top: 10.0),
                child: new RaisedButton(
                  onPressed: (){
                    databaseHelper.addDataProducto(
                        _nameController.text.trim(), _directionController.text.trim(), _phoneController.text.trim(), _foodController.text.trim(), _locationController.text.trim(), _priceController.text.trim(), _eventController.text.trim(), _environmentController.text.trim());
                    Navigator.of(context).push(
                        new MaterialPageRoute(
                          builder: (BuildContext context) => new MainPage(),
                        )
                    );
                  },
                  elevation: 5.0,
                  color: Colors.orange[900],
                  child: Text("Agregar", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }



}