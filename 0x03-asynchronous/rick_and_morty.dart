import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    String apiUrl = 'https://rickandmortyapi.com/api/character';
    http.Response response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      List<dynamic> characters = jsonResponse['results'];
      characters.forEach((character) {
        print(character['name']);
      });
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
  } catch (error) {
    print('Error caught: $error');
  }
}
