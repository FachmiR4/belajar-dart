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

// void main(){
//   var person1 = Person('fachmi', 'jakarta');
//   print(person1.name);
//   print(person1.address);
// } 

/** Named Constructor
 * constractor hanya bisa dibuat satu saja pada sebuah class
 * jika kita butuh lebih dari satu constructor, kita bisa menggunakan named constructor
 * Named Constructor adalah constructor yang memiliki nama tambahan setelah nama class
 * biasanya digunakan untuk membuat constructor dengan tujuan yang berbeda
 * cara membuat named constructor adalah dengan menambahkan titik (.) setelah nama class diikuti dengan nama constructor
 * contoh penggunaan named constructor adalah sebagai berikut
 * ```dart
 * class ClassName{
 *   ClassName.namedConstructor(){
 *     // kode disini
 *   }
 * }
 */

class Person2{
  String name = 'guest';
  String? address;
  final String country = 'indonesia';

  Person2(this.name, this.address);

  Person2.guest(){
    name = 'guest';
    address = 'unknown';
  }
}
// void main(){
//   var person1 = Person2('fachmi', 'jakarta');
//   print(person1.name);
//   print(person1.address);

//   var person2 = Person2.guest();
//   print(person2.name);
//   print(person2.address);
// }

/**Redirecting Constructor
 * Redirecting Constructor adalah constructor yang memanggil constructor lain pada class yang sama
 * biasanya digunakan untuk mengurangi duplikasi kode pada constructor
 * cara membuat redirecting constructor adalah dengan menambahkan tanda titik dua (:) setelah nama constructor diikuti dengan pemanggilan constructor lain
 * contoh penggunaan redirecting constructor adalah sebagai berikut
 * ```dart
 * class ClassName{
 *   ClassName.parameter1(){
 *   // kode disini
 *  } 
 *  ClassName.parameter2(): this.parameter1(){
 *  // kode disini
 * }
 * }
 */

class Person3{
  String name = 'guest';
  String? address;
  final String country = 'indonesia';

  Person3(this.name, this.address);

  Person3.guest(): this('guest', 'unknown');
}

// void main(){
//   var person1 = Person3('fachmi', 'jakarta');
//   print(person1.name);
//   print(person1.address);

//   var person2 = Person3.guest();
//   print(person2.name);
//   print(person2.address);
// }

/** initializer list
 * Initializer list adalah sebuah cara untuk menginisialisasi field sebelum constructor dijalankan
 * biasanya digunakan untuk menginisialisasi field yang bersifat final atau const
 * cara membuat initializer list adalah dengan menambahkan tanda titik dua (:) setelah nama constructor diikuti dengan inisialisasi field
 * contoh penggunaan initializer list adalah sebagai berikut
 * ```dart
 * class ClassName{
 *   final String name;
 *  ClassName(String name): this.name = name.toUpperCase(){
 * // kode disini
 * }
 * } 
 */

class Person4{
  String name;
  String? address;
  final String country;

  Person4(String name, String address)
  : name = name.toUpperCase(),
    address = address,
    country = 'indonesia' {
    // kode disini contoh
    String fullname = '$name $address';
    print(fullname);
  }
}

class Customer {
  String firstName = '';
  String lastName = '';
  String fullName = '';

  Customer(this.fullName) : firstName = fullName.split(" ")[0], lastName = fullName.split(" ")[1]{
    print("create new customer");
  }
}

// void main(){
//   var person1 = Person4('fachmi', 'jakarta');
//   print(person1.name);
//   print(person1.address);

//   var customer = Customer("Fachmi Ramadhan");
//   print(customer.fullName);
//   print(customer.firstName);
//   print(customer.lastName);
// }

/** constant Constructor
 * Constant Constructor adalah constructor yang digunakan untuk membuat object yang bersifat konstan atau immutable
 * biasanya digunakan untuk membuat class yang bersifat immutable atau tidak bisa diubah setelah di buat 
 * cara membuat constant constructor adalah dengan menambahkan kata kunci const sebelum nama constructor
 * contoh penggunaan constant constructor adalah sebagai berikut
 * ```dart
 * 
 * class ClassName{
 *   const ClassName(){
 *     // kode disini
 *   }
 * }
 * atau 
 * class ImmutablePoint{
 *  final int x;
 *  final int y;
 *  const ImmutablePoint(this.x, this.y);
 * }
 */

 class ImmutablePoint{
   final int x;
   final int y;
   const ImmutablePoint(this.x, this.y);
  }

  void main(){
    var point1 = const ImmutablePoint(10, 20);
    var point2 = const ImmutablePoint(10, 20);

    if(point1 == point2){
      print('point1 dan point2 sama');
    } else {
      print('point1 dan point2 berbeda');
    }
  }