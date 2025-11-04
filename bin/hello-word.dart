
void main(){
  String name;
  name = 'fachmi ramadhan';
  String name2 = 'fachmi ramadhan 3';
  var name1 = 'fachmi Ramadhan 2';
  print(name); //print out = untuk 
  print(name1);
  print(name2); 

  var firstname = 'fachmi';
  final lastname = 'ramadhan';

  firstname = 'dodon';
  // lastname = 'jawad';

  print(firstname);
  print(lastname);

  const array1 = [1, 2, 3, 4];
  final array2 = [5, 6, 7, 8];

  // array2 = [0, 0, 2, 1];
  array2[2] = 2;

  // array1 = [1, 2, 3, 5];
  // array1[0] = 2;

  print(array1);
  print(array2);

  // lete or var for variable 
  late var value = getValue();
  print('variable sudah dibuat');
  print(value);

}
String getValue() {
    print('getValue() dipanggil');
    return 'fahcmi Ramdhan';
  }