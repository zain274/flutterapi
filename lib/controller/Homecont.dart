
import 'dart:convert';

import 'package:http/http.dart' as http;

getapi()async{
  var url="https://jsonplaceholder.typicode.com/users";
  var urlupgrade=Uri.parse(url);
  var response=await http.get(urlupgrade);
  var res=jsonDecode(response.body);
  print(res);
  return res;

}