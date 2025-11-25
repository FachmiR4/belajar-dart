import 'data/category.dart';
import 'data/location.dart';
import 'data/animal.dart'; // abstract method
import 'data/product.dart'; // access modifier

import 'data/retangel.dart'; // getter & setter


/** Object Class 
 * setiap class yang kita buat secara automatis adalah turunan dari object, kecuali null
 * walaupun tidak secara langsung kita eksplisit menyebutkan extends object, tapi secara otomatis akan membuat class kita extends object
 * bisa kita katakan class object adalah superclass dari semua class di dart
 */

class Person{}

// void main (){
//   var number = 100;
//   print(number.toString());

//   var person = Person();
//   print(person.toString());
// }

/**Polymorphism
 * Polymorphism adalah kemampuan suatu object untuk mengambil banyak bentuk
 * dalam dart polymorphism bisa kita lakukan dengan pewarisan (inheritance)
 * dengan pewarisan, kita bisa membuat sebuah variable dari class parent, lalu kita isi dengan object dari class child
 * dengan begitu variable tersebut bisa mengambil banyak bentuk, sesuai dengan object yang kita berikan
 * dengan polymorphism, kita bisa membuat code yang lebih fleksibel dan reusable
 * contoh polymorphism dengan pewarisan
 * dalam contoh dibawah ini, kita membuat variable manager dari class parent (Manager) lalu kita isi dengan object dari class child (Supervisor)
 * dengan begitu variable manager bisa mengambil banyak bentuk, sesuai dengan object yang kita berikan
 * dengan polymorphism, kita bisa memanggil method yang ada di class parent (Manager) meskipun object yang kita berikan adalah dari class child (Supervisor)
 * dengan begitu kita bisa membuat code yang lebih fleksibel dan reusable
 */

class manager{
  String name;
  manager(this.name);
}
class supervisor extends manager{
  supervisor(String name) : super(name);
}
class staff extends manager{
  staff(String name) : super(name);
}



// void main(){
//   manager manager1 = supervisor("Andi");
//   manager manager2 = staff("Budi");

//   print("Manager 1: ${manager1.name}");
//   print("Manager 2: ${manager2.name}");

//   manager manager3 = manager("Charlie");
//   print(manager3);

//   manager3 = supervisor("Diana");
//   print("Manager 3: ${manager3.name}");

//   manager3 = staff("Evan");
//   print("Manager 3: ${manager3.name}");
// }


/**Import 
 * import adalah kemampuan untuk menggunakan class, fucntion atau variable yang berada difile yang berbeda
 * import sangan cocok digunakan ketika kode program kita sudah banyak dan ditempatkan di banyak file 
 */

//  void main(){
//   var category = Category('1', 'laptop');
//   print(category.id);
//   print(category.name);
//  }

/**abstract class 
 * saat kita membuat class, kita bisa menjadikan sebuah class sebagai abstract class 
 * abstract class artinya, class tersebut tidak bisa dibuat sebagai object secara langsung, hanya bisa diturunkan
 * untuk membuat sebuah class menjadi abstract, kita bisa menggunakan kata kunci abstract sebelum kata kunci class 
 * dengan demikian abstract class bisa kita gunakan sebagai kontrak untuk class
 */

// void main(){
//   var city = City('sumedang');

//   // var location = Location(); //error
// }

/** Abstract Method 
 * saat kita membuat class yang abstract, kita bisa membuat abstract method juga didalam abstract tersebut
 * saat kita membuat sebuah abstract method, kita tidak boleh membua blok method tersebut
 * artinya abstract method wajib dioverride di class child
 */

// void main(){
//   var cat = Cat();
//   cat.name = 'puss';
//   cat.run();
// }

/** Access Modifier
 * secara default, saat kita membuat field atau Method dalam sebuah class, maka semua field dan method tersebut bisa diakses oleh siapa saja
 * kadang-kadang kita ingin menyembunyikan field atau method
 * untuk menyembunyikan akses field atau method, kita bisa menambahkan _(underscore) diawal field atau method nya
 * Secara otomatis field atau method tersebut, hanya bisa diakses dari file tersebut, dan artinya tidak bisa diakses 
 */

// void main(){
//   var product = Product();
//   product.id = '1';
//   product.name = 'sapu';
//   // product._quantity = 100; // terjadi error
//   product.getQuantity();
// }


/**Encapsulation
 * Encapsulation artinya memastikan data yang sensitif sebuah object tersebunyi dari akses luar
 * hal ini bertujuan agar kita bisa menjaga data sebuah object tetap baik dan valid
 * untuk mencapai ini, biasanya kita akan membuat semua field yang bisa diakses dari luar
 * agar bisa diubah, kita akan menyediakan method untuk mengubah dan mendapatkan field tersebut
 * 
 * Getter dan Setter 
 * proses encapsulation sudah dibuat standarisasinya, dimana kita bisa menggunakan Getter dan Setter method.\
 * getter adalah function yang dibuat untuk mengambil data field 
 * setter adalah function untuk mengubah data field
 * untuk getter, kita bisa menggunakan kata kunci get
 * untuk setter, kita bisa menggunakan kata kunci set 
 * 
 * Expression Body
 * jika Getter dan Setter yang kita buat isinya hanya mengambil dan mengubah field, disarankan untuk menggunakan Expression Body
 * cara membuat Expression Body mirip seperti Anonymous function
 * 
 * Getter dan Setter yang tidak perlu 
 * dalam bahasa pemograman seperti java atau C#, pengguna Getter dan Setter sudah menjadi sesuatu yang lumrah, hal ini kerena mengakses field dan method sangatlah berbeda, oleh karena itu dari awal selalu dibuat getter dan setter
 * di dart, hal ini tidak perlu menggunakan getter dan setter hanya melakukan redirect data ke field, disarankan tidak perlu menggunakan Getter dan setter, cukup langsung saja menggunakan field 
 * hal ini dikarenakan dalam dart, jika kedepannya kita ingin menambah Getter dan Setter, kita bisa tambahkan, tanpa harus megubah kode client  
 */

void main(){
  var retangel = Retangel();
  retangel.width = 120;
  print(retangel.width);

  retangel.length = 130;
  print(retangel.length);
}