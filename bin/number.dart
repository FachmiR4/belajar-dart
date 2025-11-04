void main(){
  int number = 10;
  double number2 = 20;

  print(number);
  print(number2);

  num number3 = 10;
  print(number3);
  
  number3 = 10.9;
  print(number3);

  // boolean 
  bool finish = false;
  print(finish);

  finish = true;
  print(finish);

  // string intepolation / string expression

  String firstname = 'fachmi ';
  String lastname = "Ramadhan";

  var fullname = '$firstname ${lastname}';
  print(fullname);

  // karakter Backslash
  var text = 'this is \'dart\' \$cool';
  print(text);

  var name3 = firstname + lastname;
  print(name3);

  var name4 = 'fachmi' ' Ramadhan' ' bahri';
  print(name4);

  // multiline string
  var longString = '''
  this is long string
  multiline string  
  learning dart
  ''';
  print(longString);

  // dynamic
  dynamic variable = 100;
  print(variable);

  variable = true;
  print(variable);

  variable = 'fahmi';
  print(variable);

  // konversi string ke number
  var inputString = '1000';
  var inputInterger = int .parse(inputString);
  var inputDouble = double.parse(inputString);

  print(inputString);
  print(inputInterger);
  print(inputDouble);

  var doubleFromInt = inputInterger.toDouble();
  var intFromDouble = inputDouble.toInt();
  var stringFromInt = inputInterger.toString();

  print([doubleFromInt, intFromDouble, stringFromInt]);

  // konversi boolean ke string / sebaliknya
   var inputString2 = 'true';
   var inputBoolean = true;

  var booleanToString = inputBoolean.toString();

  print([inputBoolean, booleanToString]);


}