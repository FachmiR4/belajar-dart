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

void main(){
  sayHello2('fachmi', 'Ramadhan');
}

