import 'dart:convert';
import '1-util.dart';


getUserId() async {
  var user = await fetchUserData();

  Map<String, dynamic> jsonMap = json.decode(user);

  return jsonMap['id'];

}