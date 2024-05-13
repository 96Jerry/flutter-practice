import 'package:http/http.dart' as http;

Future fetchData(String endpoint) async {
  final response = await http.get(Uri.parse('http://localhost:3000$endpoint'));
  return response.body;
}
