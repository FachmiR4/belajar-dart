/** Variable Shadowing 
 * --- IGNORE ---
  * Variable Shadowing adalah sebuah kondisi dimana ada variable dengan nama yang sama pada scope yang berbeda
  * biasanya terjadi pada variable lokal dan variable global
  * ketika kita mengakses variable tersebut, maka yang diakses adalah variable lokal
  * jika ingin mengakses variable global, kita bisa menggunakan this.nama_variable
 */

class person{
  String name = 'Guest';
  String? address;
  final String country = "Indonesia";
  person(String name, String address){
    name = name;
    address = address;
  }
}

// void main(){
// parameter tidak boleh sama kareana akan menutupi nama object lain
//   var person1 = person('fachmi', 'Ramadhan');
//   print(person1.name);
//   print(person1.address);
// }

/** This keyword
 * saat kita membuat kode didalam block constructor atau method didalam class, kita bisa menggunakan kata kunci this untuk mangakses object saat ini
 * misal kita butuh mengakses sebuah field yang namanya sama dengan parameter method, hal ini tidak bisa dilakukan jika langsung menyebut nama field, kita bisa mengakses nama filed tersebut dengan kata kunci this
 * this jiga tisa hanya digunakan untuk mangakses field miliki object saat ini, namun juga bisa diguanakan untuk mangakses method
 * this bisa digunakan untuk mengatasi masalah bariable shadowing
 */

// class Person{
//   String name = 'guest';
//   String? address;
//   final String country = 'indonesia';

//   Person(String name, String address){
//     this.name = name;
//     this.address = address;
//   }
// }

// void main(){
//   var person1 = Person('fachmi', 'jakarta');
//   print(person1.name);
//   print(person1.address);
// }

/** initializing Formal parameter
 * Untuk mengatasi variable shadowing pada constructor, kita bisa menggunakan initializing formal parameter
 * caranya adalah dengan menambahkan kata kunci this di depan nama parameter pada constructor
 * Formal parameter hanya bisa digunakan pada constructor saja, tidak bisa digunakan pada method
 * untuk kasus ini, kita bisa menggunakan fitur formal parameter, dimana pada parameter kita bisa sebutkan field mana yang akan di ubah nilainya dengan menambahkan kata kunci this di depan nama parameter
 */

class Person{
  String name = 'guest';
  String? address;
  final String country = 'indonesia';

  Person(this.name, this.address);
}

void main(){
  var person1 = Person('fachmi', 'jakarta');
  print(person1.name);
  print(person1.address);
} 