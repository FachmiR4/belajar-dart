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