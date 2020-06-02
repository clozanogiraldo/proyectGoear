import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class DataBaseUsers {

  var status;
  var token;
  String serverUrlusers = "http://192.168.0.114/users";

  //funciton getData
  Future<List> getData() async{

    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key ) ?? 0;

    String myUrl = "$serverUrlusers";
    http.Response response = await http.get(myUrl,
        headers: {
          'Accept':'application/json',
          'Authorization' : 'Bearer $value'
    });
    return json.decode(response.body);
   // print(response.body);
  }


  //function for register users
  void addDataUser(String _nameController, String _passwordController, String _emailController, String _phoneController) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key ) ?? 0;

   // String myUrl = "$serverUrl/api";
   String myUrl = "http://192.168.0.114:3000/users";
   final response = await  http.post(myUrl,
        headers: {
          'Accept':'application/json'
        },
        body: {
          "name":       "$_nameController",
          "password":   "$_passwordController",        
          "email":      "$_emailController",
          "phone":      "$_phoneController"
        } ) ;
    status = response.body.contains('error');


  }

  //function for update or put
  void editarProduct(String _nameController, String _passwordController, String _emailController, String _phoneController) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key ) ?? 0;

    String myUrl = "http://192.168.0.114:3000/prueba";
    http.put(myUrl,
        body: {
          "name":       "$_nameController",
          "password":   "$_passwordController",        
          "email":      "$_emailController",
          "phone":      "$_phoneController"
        }).then((response){
      print('Response status : ${response.statusCode}');
      print('Response body : ${response.body}');
    });
  }


  //function for delete
  Future<void> removeRegister(String _id) async {

  String myUrl = "http://192.168.0.114:3000/prueba/$_id";

  Response res = await http.delete("$myUrl");

  if (res.statusCode == 200) {
    print("DELETED");
  } else {
    throw "Can't delete post.";
  }
}

  //function save
  _save(String token) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = token;
    prefs.setString(key, value);
  }

//function read
 read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key ) ?? 0;
    print('read : $value');
  }
}
