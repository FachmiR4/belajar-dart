import 'data/category.dart';

/**Interface
 * sebelum kita sudah tahu bahwa abstark class bisa kita gunakan sebagai kontrak untuk class childnya 
 * namun sebenernya yang untuk kontrak adalah interface 
 * jangan salah sangka bahwa interface disini bukanlah user interface 
 * interface mirip dengtan abstract class, yang membedakan adalah di interface, semua methode otomatis abstract
 * untuk mewariskan interface, kita tidak menggunakan kata kunci extends, melaikan implements
 * 
 * 
 * Membuat Interface
 * Hal yang membedakan dart dan bahasa pemograman java, php dan lain-lain adalah saat kita membuat interface
 * interface didart bisa diambil dari class apapunm saat ini kita membuat sebuah class secara automatis class tersebut merupakan interface untuk itu sendiri
 * interface dari class tersebut, bisa digunakan pada class lain jika kita ingin
 * maka secara otomatis, kita harus mendeklarasikan semua method dan field yang terdapat pada class tersebut, karena yang kita ambil sebenernya adalah interfacenya, bukan class
 * Anggap saja interface adalah kontrak dari pembuatan class 
 */

class Car {
  String name = "";
  void drive(){

  }
  int getTire(){
    return 0;
  }
}

// class Avanza implements Car{
//   String name = "Avanza";
//   void drive(){
//     print('Avanza is running');
//   }
//   int getTire(){
//     return 4;
//   }
// }

/**MUltiple Interface Inheritance
 * Hal yang membedakan ketika kita melakukan pewarisan adalah kita hanya bisa melakukan extends terhadap beberapa class
 * hal ini dikarenakan sebenarnya implements bukan melakukan pewarisan, melainkan mendeklarasikan ulang seluruh method atau field
 * anggap saja ini seperti membuat class yang berbeda, namun memiliki field dan method yang sama
 * untuk melakukan multiple implements, kita bisa menggunakan pemisah tanda koma antara class yang kita implements 
 */

abstract class HasBrand{
  String getBrand();
}

class Avanza implements Car, HasBrand{
  String name = "Avanza";
  String getBrand() => "Toyota";
  void drive(){
    print('Avanza is running');
  }
  int getTire(){
    return 4;
  }
}

/**Mixin 
 * Mixin merupakan rusable code yang bisa digunakan dikelas lain tanpa harus terkendala dengan pewarisan 
 *  Mixin mirip dengan melakukan copy paste code dibeberapa tempat, namun dengan cara yang baik 
 * dengan mixin, kita bisa membuat kode yang sama pa beberapa class 
 * Satu class bisa menambahkan lebih dari satu mixin, sam seperti interface
 * untuk membuat mixin, kita bisa menggunakan kata kunci mixin 
 * untuk menggunakan mixin, kita bisa menggunakan kata kunci with, di ikuti dengan mixin-nya
 * 
 * 
 * Membatasi Mixin 
 * secara default, semua class bisa menggunakan mixin 
 * Namun jika kita ingin membatasi hanya class turunan tertentu, kita bisa tambahkan kata kunci on, diikuti dengan class yang kita batasi pada mixin nya 
 */

abstract class MultiMedia{

}

mixin PlayAble on MultiMedia {
  String? name;

  void play(){
    print('play $name');
  }
}

mixin StopAble on MultiMedia{
  String? name;

  void stop(){
    print('stop $name');
  }

}


class Video extends MultiMedia with PlayAble, StopAble{

}

class Audio extends MultiMedia with PlayAble, StopAble{

}

/** ToString Method 
 * sebelumnya kita sudah bahas bahwa parent class untuk semua class kecuali null aladah object
 * didalam object terdapat method bernama toString(), method ini merupakan untuk repsentasi Sting dari object
 * Contohnya, saat kita menggunakan function print(object), sebenernya yang dipanggil adalah print(object.toString())
 * kita bisa meng-override method toString jika ingin mengimplemntasikan representasikan data String dari Class yang kita buat 
 */

class Product{
  String? id;
  String? name;
  int? _quantity; // tidak bisa diakses diluar directory

  int? getQuantity(){
    return _quantity;
  }

  String toString (){
    return 'Product{id: $id, name: $name, quantity: $_quantity}';
  }
}

// void main (){
//   var product = Product();
//   product.id = '1';
//   product.name = "Supradi";

//   print(product.toString());
//   print(product);
// }

/**Equals Oprator
 * untuk membadingkan dua sebuah apakah sama atau tidak, biasanya kita menggunakan oprator ==
 * secara default oprator == adalah milik class object, implementasinya jika kita menggi=unakan oprator == milik class object adalah akan melakukan pengecekan kesamaan object dari lokasi di memori
 * kadang-kadang,kita ingin mengimplementasikan logika untuk membandingkan object
 * untuk hal ini, kita bisa melakukan override oprator == yang ada diclass object
 */

void main(){
  var category1 = Category('1', 'Laptop');
  var category2 = Category('1', 'Laptop');

  print(category1 == category1);
  print(category1 == category2);

}


