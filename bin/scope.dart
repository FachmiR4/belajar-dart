/**Scope
 * variable atau function hanya bisa diakses didalam area dimana mereka dibuat.
 * hal ini disebuta scope 
 * contoh: jika sebuah variable dibuat difuction, maka hanya bisa diakse di method tersebut, atau jika dibuat blok kode, maka hanya bisa diakses didalam blok kode tersebut.
 */

// void main() {
//   var name = "Dart"; // variable ini bisa diakses di seluruh main function

//   void sayHello() {
//     var greeting = "Hello"; // variable ini hanya bisa diakses di dalam sayHello function
//     print("$greeting, $name");
//   }

//   sayHello();

//      // print(greeting); // ini akan error karena greeting tidak bisa diakses di sini
// }

/** Clouser 
 * Clouser adalah kemampuan function untuk mengakses variable dari scope luar meskipun scope luar tersebut sudah tidak aktif lagi.
 * Closer dapat kemampuan sebuah function atau anonymous function berintraksi dengan data-data disekitarnya dalam scope yang sama.
 * contoh: function yang dibuat didalam function lain, function dalam dapat mengakses variable dari function luar.
 */

// void main() {
//   String name = "Dart";

//   void sayHello() {
//     print("Hello, $name"); // mengakses variable dari scope luar
//   }

//   sayHello();
// }

// contoh clouser dengan anonymous function
// void main() {   
//   String name = "Dart";

//   var sayHello = () {
//     print("Hello, $name"); // mengakses variable dari scope luar
//   };

//   sayHello();
// }

// contoh clouser dengan return function
// Function createGreeting(String greeting) {
//   return (String name) {
//     print("$greeting, $name"); // mengakses variable dari scope luar
//   };
// }
// void main() {
//   var greetHello = createGreeting("Hello");
//   greetHello("Dart");    
// }

/**Recursive function 
 * Recursive function adalah function yang memanggil dirinya sendiri secara langsung atau tidak langsung untuk menyelesaikan suatu masalah.
 * Recursive function biasanya digunakan untuk menyelesaikan masalah yang dapat dipecah menjadi sub-masalah yang lebih kecil dengan struktur yang sama.
 * kadang dalam pekerjaan, kita sering menemukan kasus dimana menggunakan recursive function lebih mudah dibandingkan tidak menggunakan recursive function.
 * contoh: menghitung faktorial dari sebuah angka.
 * contoh lain: menghitung deret fibonacci.
 * contoh lain: menelusuri struktur data pohon (tree).
 * 
 * Namun, perlu diingat bahwa penggunaan recursive function harus dilakukan dengan hati-hati karena dapat menyebabkan masalah seperti stack overflow jika tidak ada kondisi dasar yang tepat atau jika rekursi terlalu dalam.
 * Oleh karena itu, penting untuk selalu menyertakan kondisi dasar yang menghentikan rekursi.
 * Selain itu, dalam beberapa kasus, pendekatan iteratif (menggunakan loop) mungkin lebih efisien daripada rekursif.
 * kenapa problem ini bisa terjadi? karena ketika memanggil function, dart akan menyimpannya dalam stack, jika function tersebut memanggil function lain, maka stack akan menumpuk terus, dan jika terlalku dalam, maka stack akan terlalu besar, dan bisa menyebabkan error StackOverflow
 */


int factorialLoop(int value){
    var result = 1;
    for(var i = 1; i <= value; i++){
        result *= i;
    }
    return result;

}

int factorialRecursive(int value) {
  if (value == 1) {
    return 1; // kasus dasar: faktorial dari 0 adalah 1
  } else {
    return value * factorialRecursive(value - 1); // pemanggilan rekursif
  }
}

// masalah dengan recursive 
void loop(int value){
    if (value == 0) {
      print('selesai');
    }else{
        print('perulangan ke-$value');
        loop(value - 1);
    }
}
void main() {
  var result = factorialLoop(5);
  print(result); // output: 120
    var result2 = factorialRecursive(5); // fac(5) = 5 * fac(4) => fac(4) = 4 * fac(3) => fac(3) = 3 * fac(2) => fac(2) = 2 * fac(1) => fac(1) = 1 
    print(result2); // output: 120
    // loop(1000000); loop yang akan terjadi error stackoverflow error
}