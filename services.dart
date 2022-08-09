import 'dart:convert';

import 'package:app/models/user_model.dart';
import 'package:http/http.dart' as http;


getUser()async{
 var url = Uri.parse("https://maaz-api.tga-edu.com/api/users");
 var response = await http.get(url);
 var responseData = jsonDecode(response.body);
 return UserModel.fromJson(responseData);
}