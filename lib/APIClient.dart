import 'dart:convert';
import 'package:http/http.dart' as http;
class APIClient{
  static var responsebody;
  static getPosts() async{
    var url = Uri.https('jsonplaceholder.typicode.com','/users');
    var response = await http.get(url);
    responsebody = jsonDecode(response.body);
    return (response.statusCode);
  }
}