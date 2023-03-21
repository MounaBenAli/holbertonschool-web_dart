import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final apiUrl = 'https://rickandmortyapi.com/api/character';
    var  response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      var characters = jsonResponse['results'];
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
