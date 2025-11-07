/**Function
 * function adalah blok kode program yang akan berjalan saat kita panggil
 * sebelum kita sudah menggunkan method print() untuk tampilankan tulisan di console
 * untuk membuat function, kita bisa menggunakan kata kunci void, lalu di ikuti dengan nama function, kurung() dan di akhiri dengan block
 * kita bisa memanggil function dengan menggunakan nama function lalu diikuti dengan kurun ()
 * dibahasa pemograman lain, function juga disebut dengan Method
 */

// void sayHello(){
//   print('Hello World');
// }

// void main(){
//   sayHello();
//   sayHello();
// }

/**Function parameter
 * kita bisa mengirim informasi ke function yang ingin kita panggil
 * untuk melakukan tersebut, kita bisa menambahkan parameter atau argument di function yang sudah kita buat
 * cara membuat parameter sama seperti cara membuat variable
 * parameter ditempatkan didalam kurung () dideklarasi function
 * parameter bisa lebih dari satu, jika lebih dari satu, harus dipisahkan menggunakan tanda koma
 * ketika memanggil function, kita bisa sebut nama function nya, lalu gunakan kuruang (), jika terdapat parameter dalam kurung (), silahkan masukan parameter sesuai dengan jumlah parameternya
 */

void sayHello2( String firstName, String Lastname ){
  print('Heloo, $firstName $Lastname');
}

// void main(){
//   sayHello2('fachmi', 'Ramadhan');
// }


// parameter optional
/**parameter optional
 * secara default, parameter wajib dilakukan ketika kita memanggil function
 * namun jika kita ingin membuat parameter yang optional, artinya tidak wajib dikirim, kita bisa wrap dalam kurung[]
 * dan parameter optional haruslah nullable
 */

void MyName(String firstName, [String? middleName = '', String? lastName = '']){
  print('Hello $firstName $middleName $lastName');
}

// void main(){
//   MyName('Fahmi');
//   MyName('fahmi', 'ramadhan');
//   MyName('fahmi', 'ramadhan', 'bahri');
// }
 
 /** Named Parameter
  * secara default posisi parameter ketika memanggil function harus sesusai dengan posisi para meter di function  tersebut
  * dart memiliki fitur dengan named parameter, dimana saat memanggil paramter kita bisa menyebutkan nama parameternya, sehingga posisisnya perlu harus sesuai dengan posisi parameternya
  * namun ketika membuat functionnya kita bisa melakukan perubahan ketika membuat parameternya, yaitu dengan menggunakan kurun kurawal {}
  * secara default, named parameter adalah nullable, sehingga kita perlu mtambahkan karakter
  */

  void myName2({required String? firstName, String? lastName = 'Default'}){
    print('Hello $firstName, $lastName');
  }

  // void main(){
  //   myName2(firstName: 'fachmi', lastName: 'Ramadhan');
  //   myName2(lastName: 'Ramadhan', firstName: 'fachmi');
  //   myName2(firstName: 'fachmi');
  //   myName2(firstName: 'fachmi');
  //   myName2(lastName: 'ramadhan', firstName: 'fachmi');
  // }

  /** function return value 
   * secara default, function itu menghasilkan value null, namun jika kita ingin, kita bisa membuat sebuah function mengembalikan nilai
   * agar fucntion bisa menghasilkan value, kita harus mengubah kata kunci void dengan tipa data yang dihasilkan
   * dan didalam block function, untuk menghasilkan nilai tersebut, kita harus menggunakan kata kunci return, lalau diikuti data yang sesuai dengan tipa data yang sudah deklarasikan di function
   * kita hanya bisa menghasilkan 1 data di sebuh function, tidak bisa lebih dari satu
   */

  int sum(List<int> numbers){
    var total = 0;
    for (var value in numbers){
      total += value;
    }
    return total;
  }

  // void main(){
  //   var data = sum([10, 10, 10, 10, 10]);
  //   print(data);
  //   print(sum([20, 31, 10]));
  // }

/** function short expression
 * dart mendukung function short expression
 * dimana jika terdapat sebuah function yang hanya satu baris, kita bisa menyingkatnya  secara sederhana
 * untuk membuat function short expression, kita tidak butuh kurung {} dan juga tidak butuh kata kunci return 
 */

int sum1(int first, int secound) => first + secound;
// void main(){
//   var total = sum1(20, 30);
//   print(total);

//   print(sum1(10, 10));
// }
  
/** inner function 
 * di dart, kita bisa membuat inner function didalam outer function
 * namun perlu diperhatikan, inner function yang dibuat didalam outer function, hanya bisa diakses dari outer function saja, tidak bisa diakses dari luar outer function
 * untuk lebih detail akan bahas dimateri scope
 */

// void main(){
//   void sayHello3(){
//     print('inner function');
    
//     // void sayHelloAgain(){
//     //   print('haiii');
//     // }

//   }
//   sayHello3();
// }


/** main Function
 * kita sudah tahu dari awal, bahkan main function adalah function yang digunakan sebagai gerbang masuk aplikasi dart
 * function main adalah function yang akan dijalankan pertama kali oleh dart
 * 
 * /main function parameter/ 
 * main function memiliki sebuah parameter optional, yaitu adalah arguments, dimana data parameter tersebut berupa List<String>
 * Data List<String> tersebut diambil secara otomatis ketika kita menjalankan file dart menggunakan perintah:
 * dart run namafile.dart arg1 arg2 arg3
 * dart run namafile.dart "argument 1" "argument 2" "argument 3"
 */

// void main(List<String> args){
//   print('Argument: $args');
// }

/**Higher order function
 * higher-order function adalah function yang menggunakan function sebagai variable, parameter atau return value
 * penggunaan higher-order function kadang berguna ketika kita ingin membuat function yang general dan ingin mendapatkan input flexible berupa function, yang bisa dideklarasikan oleh pengguna
 * ketika memanggil function tersebut
 */

void sayHello1(String name, String Function(String) filter){
  var filterName = filter(name);
  print('Hi $name');
}

void sayHello5(String name, String Function(String) filter){
  print('Hello ${filter(name)}');
}
void main(){
  sayHello5("fachmi ramadhan bahri", (name){
    return name.toLowerCase();
  });

  sayHello5("fachmi ramadhan bahri", (name) => name.toUpperCase());

  var upperFunction = (String Name){
    return Name.toUpperCase();
  };

  var lowerFunction = (String Name) => Name.toLowerCase();
}






