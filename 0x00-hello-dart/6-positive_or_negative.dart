void main(List<String> args) {
  int number = int.parse(args[0]);

  if(number == 0){
    print('$number is zero');
  } else if (number < 0) {
    print('$number is negative');
  } else {
    print('$number is positive');
  }  
}

