// import 'dart:convert';
// import 'dart:io';
// import 'package:http/http.dart' as http;

// import 'todo.dart';

// /// Providing a custom name can be useful for avoiding naming conflicts
// /// with other libraries or functions. e.g http import
// Future<void> main() async{
//   try {
//     final url = 'https://jsonplaceholder.typicode.com/todos/1';
//     final parsedUrl = Uri.parse(url);
//     final response = await http.get(parsedUrl);

//     final statusCode = response.statusCode;
//     if (statusCode == 200) {
//       final rawJsonString = response.body;
//       final jsonMap = jsonDecode(rawJsonString);
//       final todo = Todo.fromJson(jsonMap);
//       print(todo);
//     } else {
//       throw HttpException('$statusCode');
//     }
//   } on SocketException catch (error) {
//     print(error);
//   } on HttpException catch(error) {
//     print(error);
//   } on FormatException catch (error) {
//     print(error);
//   }


// }
