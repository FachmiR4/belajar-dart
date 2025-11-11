/**
 * membuat procject 
 * dart create Nama_project
 */

/** class
 * class Person {
 *  // deklarasi class
 * }
 */

class Person{
  String name = 'guest';
  String? address;
  final String country = 'indonesia';
}

/** Object
 * object adalah hasil instansiasi dari sebuah class
 * untuk membuat object kita bisa menggunakan nama class lalu diikuti dengan kurung ()
 * var person1 = Person()
 * 
 */

// void main(){
//   var person1 = Person();
//   print(person1);
//   Person person2 = new Person(); // new tidak direkomendasikan oleh dart
//   print(person2);
// }

/** Field
 * Fields / properties / attributes adalah data yang bisa kita sisipkan didalam object
 * namun sebelum kita bisa masukan data fields, kita harus mendeklarasikan data apa saja yang kita miliki object tersebut didalam deklarasi class-nya
 * membuat field sama seperti membuat variable, namun ditempatkan diblock class
 * fiel wajib dimasukan nilainya, kecuali fiel yang nullable
 * 
 * manipulasi field
 * Field yang ada do object, bisa kita manipulasi nilainya dengan mengakses objectnya lalu diikuti dengan titik (.) lalu diikuti dengan nama fieldnya, tegantung final atau bukan
 * Jika final kita tidak bisa mengubah data fiel-nya, namun jika tidak, kita bisa mengubah fieldnya.
 * untuk manipulasi, sama seperti cara pada variable
 * untuk mengfakses field, kita bisa menggunakan print() 
 */

// void main(){
//   var person1 = Person();
//   person1.name = 'eko';
//   person1.address = 'jakarta';
//   // person1.country = 'singapura'; // error karena final

//   print(person1.name);
//   print(person1.address);
//   print(person1.country);
//   Person person2 = new Person(); // new tidak direkomendasikan oleh dart
//   print(person2);
// }

/**Method
 * Method adalah function yang ada didalam class
 * membuat method sama seperti membuat function, namun ditempatkan didalam block class
 * method bisa mengakses field yang ada didalam class tersebut
 * method bisa dipanggil melalui object
 * untuk mengakses method tersebut, kita bisa menggunakan titik (.) dan diikuti dengan nama methodnya, sama seperti mengakses field
 * contoh:
 * class Person {
 *  String name = 'guest';
 * 
 * void sayHello() {
 *   print('hello $name');
 *  }
 * }
 * void main() {
 * var person1 = Person();
 * person1.name = 'eko';
 *  person1.sayHello(); // hello eko
 * }  
 */

/**Method Expression Body
 * Method juga bisa dibuat dengan expression body, sama seperti function pada umumnya
 * contoh:
 * void sayHello() => print('hello $name');
 */

class Computer{
  void startup() => print('computer is starting');

  void shutdown() => print('computer is shutting down');

  String getOperatingSystem() => 'windows';
}

// void main(){
//   var computer = Computer();
//   computer.startup();
//   print(computer.getOperatingSystem());
//   computer.shutdown();
// }

/** Extension Method
 * Extension method adalah kemampuan menambahkan method baru pada sebuah class yang sudah ada tanpa harus mengubah class tersebut
 * Hal ini kadang bermanfaat jika misal class tersebut berasal dari library luar yang tidak bisa kita ubah
 * untuk membuat extension method, kita bisa menggunakan kata kunci extension diikuti dengan nama extension lalu diikuti dengan kata kunci on lalu diikuti dengan nama class yang ingin kita tambahkan method baru
 * kita jiga perlu menambhakan kata kunci extension diikuti dengan nama extension lalu diikuti dengan kata kunci on lalu diikuti dengan nama class yang ingin kita tambahkan method baru
 * contoh:
 */
extension ComputerExtension on Computer {
  void restart() {
    shutdown();
    startup();
  }
}
extension GoodByeOnPerson on Person {
  void sayGoodBye(String paraName) {
    print('goodbye $paraName, From $name');
  }
}

// void main(){
//   var computer = Computer();
//   computer.startup();
//   computer.restart();
//   computer.shutdown();

//   var person1 = Person();
//   person1.name = 'Eko';
//   person1.sayGoodBye('Budi');
// }

/**Operator
 * Operator adalah symbol-simbol khusus yang digunakan untuk melakukan operasi pada variable atau nilai
 * contoh operator: + - * / % == != > < >= <= && || ! = ~/ ++ -- [] []= >> << ^ | & ~ >>> <<= >>= &= |= ^= ?? ??= 
 * operator juga bisa dibuat didalam class, sehingga kita bisa mengubah perilaku operator tersebut sesuai dengan kebutuhan kita
 * untuk membuat operator, kita bisa menggunakan kata kunci operator diikuti dengan symbol operator yang ingin kita buat ulang
 */

class Orange{
  int quantity = 0;
  Orange operator +(Orange other) {
    Orange result = Orange();
    result.quantity = quantity + other.quantity;
    return result;
  }

}

// void main(){
//   var orange1 = Orange();
//   orange1.quantity = 10;

//   var orange2 = Orange();
//   orange2.quantity = 15;

//   var orange3 = orange1 + orange2;
//   print(orange3.quantity); // 25
// }

/** Constructor
 * saat kita membuat object, maka kita seperti memanggil sebuah method, karena kita menggunakan kurung ()
 * didalam class, kita bisa menggunakan contructor, constructor adalah method yang di akan dipanggul saat pertama kali objek dibuat.
 * mirip seperti dimethod, kita bisa membirkan parameter pada contructor
 * nama constructor harus sama dengan nama class, dan tidak membutuhkan kata kunci void atau return value
 * ketika kita menambahkan contructor pada class, maka saat membuat object baru, kita wajib mengikuti parameter yang ada di constructor
 */

class People{
  String name = 'Fachmi';
  String? address;
  final String country = 'indonesia';

  // dart tidak dapat membuat lebih dari 1 constructor
  People(String paraName, String paramAddress){
    name = paraName;
    address = paramAddress;
  }
}

void main(){
  var person = People('eko', 'depok');
  print(person.name);
  print(person.address);
}