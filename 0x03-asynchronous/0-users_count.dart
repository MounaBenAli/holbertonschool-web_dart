import '0-util.dart';

Future<void> usersCount()  async {
   var count = await fetchUsersCount();
  print('$count');
}