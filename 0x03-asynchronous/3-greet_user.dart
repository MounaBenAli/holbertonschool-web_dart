import 'dart:convert';
import '3-util.dart';



Future<String> greetUser() async{ 
    try {
      var user = await fetchUserData();
      var fetch = jsonDecode(user);

      return fetch['username'];
    } catch(error) {
      return ('Error caught: $error');
    }
}

Future<String> loginUser() async{
 try {

    if (await checkCredentials()) {
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