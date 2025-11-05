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

  void main(){
    myName2(firstName: 'fachmi', lastName: 'Ramadhan');
    myName2(lastName: 'Ramadhan', firstName: 'fachmi');
    myName2(firstName: 'fachmi');
    myName2(firstName: 'fachmi');
    myName2(lastName: 'ramadhan', firstName: 'fachmi');
  }