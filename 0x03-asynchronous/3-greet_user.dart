import 'dart:convert';
import '3-util.dart';



Future<String> greetUser() async{ 
    try {
      var user = await fetchUserData();
      var fetch = jsonDecode(user);
      var username = fetch['username'];

      return username;
    } catch(error) {
      return ('Error caught: $error');
    }
}

Future<String> loginUser() async{
 try {
    var check = await checkCredentials();

    if (check == true) {
      print('There is a user: true');
      var user = await greetUser();
       return 'Hello $user';
    } else {
      print ('There is a user: false ');
      return ('Wrong credentials');
    }     
  } catch(error) {
      return ('Error caught: $error');
  }
}