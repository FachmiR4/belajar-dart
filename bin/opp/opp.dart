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

/** Obeject
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
 */

void main(){
  var person1 = Person();
  print(person1.name);
  print(person1.address);
  print(person1.country);
  Person person2 = new Person(); // new tidak direkomendasikan oleh dart
  print(person2);
}