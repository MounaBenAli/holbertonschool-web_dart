void outer(String name, String id){
  List<String> nameComponents = name.split(" ");
  String firstname = nameComponents.first;
  String lastname = nameComponents.last;
  String inner(){
    return('Hello Agent ${lastname[0]}.${firstname} your id is $id');
  }
   var msg = inner();
   print(msg);
}

