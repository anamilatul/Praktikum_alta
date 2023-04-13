import 'dart:convert';

import 'package:dio/dio.dart';

// void main() {
//   Dio()
//       .get(
//           "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts")
//       .then((response) {
//     print(response);
//   });
// }

//JSON ENCODE
// void main() {
//   var dataMap = {
//     "name": "Ana",
//     "phone": 09545495495,
//   };
//   var dataJSON = jsonEncode(dataMap);
//   print(dataJSON);
// }

//JSON DECODE
void main() {
  var dataJSON = '{"name": "Ana", "phone": 6854545459}';
  var dataMap = jsonDecode(dataJSON);
  print(dataMap);
}
