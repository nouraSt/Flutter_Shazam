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

Future<String> getImg() async{
  
   var getimUrl = Uri.http('http://localhost:8000/api/getimages');
   var response = await http.get(getimUrl);
   if (response.statusCode == 200) {
    var jsonResponse =
        jsonDecode(response.body) as Map<String, String>;
        String url = jsonResponse['url'].toString();
   return url;
  } else {
    print('Request failed with status: ${response.statusCode}.');
    return 'no image loaded';
  }

}
}

