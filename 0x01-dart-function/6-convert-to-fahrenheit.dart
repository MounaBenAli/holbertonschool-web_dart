List<double> convertToF(List<double> temperaturesInC){
  List<double> temperaturesInF = temperaturesInC.map((celsius) => ((celsius * 9 / 5) + 32) ).toList();
  return (temperaturesInF.map((fahrenheit) => double.parse(fahrenheit.toStringAsFixed(2))).toList());
}