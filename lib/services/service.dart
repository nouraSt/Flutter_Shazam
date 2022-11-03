import 'package:http/http.dart' as http;
import 'dart:convert';

class Service {
Future<bool> addImage( String filepath) async {
    String addimageUrl = 'http://localhost:8000/api/upload';
    Map<String, String> headers = {
      'Content-Type': 'multipart/form-data',
    };
var request = http.MultipartRequest('POST', Uri.parse(addimageUrl))
      ..headers.addAll(headers)
      ..files.add(await http.MultipartFile.fromPath('image', filepath));
var response = await request.send();
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }
  
  String getimUrl(String filePath){
    return Uri.http('http://localhost:8000/api/getimages'+filePath).toString();
  }

}

