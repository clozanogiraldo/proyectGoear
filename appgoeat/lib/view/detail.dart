import 'package:appgoeat/controllers/databasehelpers.dart';
import 'package:appgoeat/view/editProduct.dart';
import 'package:appgoeat/view/listProducts.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {

  List list;
  int index;
  Detail({this.index,this.list});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {


  DataBaseHelper databaseHelper = new DataBaseHelper();

  //create function delete 
  void confirm (){
  AlertDialog alertDialog = new AlertDialog(
    content: new Text("Esta seguto de eliminar '${widget.list[widget.index]['name']}'"),
    actions: <Widget>[
      new RaisedButton(
        child: new Text("OK remove!",style: new TextStyle(color: Colors.black),),
        color: Colors.red,
        onPressed: (){
                      print(widget.list[widget.index]['name']);
                      //databaseHelper.removeRegister(widget.list[widget.index]['_id'].toString());
                      Navigator.of(context).push(
                          new MaterialPageRoute(
                            builder: (BuildContext context) => new ListProducts(),
                          ),
                      );
                    },
      ),
      new RaisedButton(
        child: new Text("CANCEL",style: new TextStyle(color: Colors.black)),
        color: Colors.green,
        onPressed: ()=> Navigator.pop(context),
      ),
    ],
  );

  showDialog(context: context, child: alertDialog);
}


  @override
  Widget build(BuildContext context) {
     return new Scaffold(
      appBar: new AppBar(title: new Text("${widget.list[widget.index]['name']}"),
      backgroundColor: Colors.yellow[900]),
      body: new Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.yellow[200], Colors.yellow, Colors.yellow[900]],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
       
        padding: const EdgeInsets.all(10.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Padding(padding: const EdgeInsets.only(top: 10.0),),
              new Text(widget.list[widget.index]['name'], style: new TextStyle(fontSize: 20.0),),
              Divider(),
              new Text("Direccion : ${widget.list[widget.index]['direction']}", style: new TextStyle(fontSize: 18.0),),
              new Padding(padding: const EdgeInsets.only(top: 10.0),),
              new Text("Teléfono : ${widget.list[widget.index]['phone']}", style: new TextStyle(fontSize: 18.0),),
              new Text("Tipo de comida : ${widget.list[widget.index]['food']}", style: new TextStyle(fontSize: 18.0),),
              new Text("Ubicación : ${widget.list[widget.index]['location']}", style: new TextStyle(fontSize: 18.0),),
              new Text("Precio : ${widget.list[widget.index]['price']}", style: new TextStyle(fontSize: 18.0),),
              new Text("Evento : ${widget.list[widget.index]['event']}", style: new TextStyle(fontSize: 18.0),),
              new Text("Ambiente : ${widget.list[widget.index]['environment']}", style: new TextStyle(fontSize: 18.0),),
              new Padding(padding: const EdgeInsets.only(top: 30.0),),

              new Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}