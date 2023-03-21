import 'dart:convert';

Future<String> fetchUserData() => Future.delayed(
      const Duration(seconds: 2),
      () =>
          '{"id" : "7ee9a243-01ca-47c9-aa14-0149789764c3", "username" : "admin"}',
    );

Future<bool> checkCredentials() =>
    Future.delayed(const Duration(seconds: 2), () => true);

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