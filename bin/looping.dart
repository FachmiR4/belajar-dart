void main(){
/** For loop
 * Sintak Perulangan For 
 * contoh :
 *  for(init statement: kodisi; post statement){
 *    block perulangan
 *  }
 * 
 * init statement akan dieksekusi hanya sekali diawal sebelum perulangan
 * kodisi akan dilakukan pengecekan dalam setiap perulangan, jika true perulangan akan dilakukan, jika false perulangan akan di berhentikan
 * post statement akan dieksekusi setiap kali diakhir perulangan
 * init statement, kondisi dan post statement tidak wajib diisi, jika kondisi tidak diisi, berarti kondisi selalu bernilai true
 *  
 * perulangan tanpa henti 
 * for(;;){
 *  print('perulangan tanpa henti');
 * }
 */


  for ( var counter = 1; counter <= 10 ; counter++){
    print('perulangan Ke-$counter');
  }

  /** while loop 
   * while loop adalah versi perulangan yang lebih sederhana dibanding for loop
   * di while loop, hanya terdapat kondisi perulangan, tanpa ada init statement dan post statement
   */
  var counter1 = 1;
  while(counter1  <= 15){
    print('perulangan while loop yang sederhana ke-$counter1');
    counter1++;
  }

  /** Do While loop
   *  Do While loop adalah perulangan yang mirip dengan while 
   *  perbedaannya hanya pada pengecekan kondisi
   *  pengecekan kondisi diwhile loop dilakukan diawal sebelom perulangan dilakukan, sedangkan di do while loop dilakukan setelah perulangan dilakukan
   *  oleh karena itu dalam do while loop, minimal pasti sekali perulangan dilakukan walaupun kondisi tidak bernilai true
   */
  var counter2 = 1;
  do {
    print('perulangan do while loop ke-$counter2');
    counter2++;
  }while(counter2 <= 17);

  /** Break & Continue
   * pada switch case, kita sudah menggunakan kata kunci break, yaitu untuk menghentikan case dalam switch
   * sama dengan pada perulangan, break juga digunakan untuk menghentikan seluruh perulangan.
   * namun berbeda dengan continue, continue digunakan untuk menghentikan perulangan saat ini, lalu melanjutkan ke perulangan selanjutnya
   */

  var counter3 = 1;
  while(true){
    print('perulangan ke-$counter3');

    if(counter3 > 12){
      break;
    }
    counter3++;
  }

  for(var counter4 = 1; counter4 <= 100; counter4++){
    if( counter4 % 4 == 0){
      continue;
    }
    print('perulangan ganjil-$counter4');
  }

  /** For In
   * kadang kita biasa mengakses data list menggunakan perulangan
   * mengakses data list menggunakan perulangan sangan bertele-tele, kita harus membuat counter, lalu mengakses list menggunakan counter yang kita buat.
   * namun untungnya, terdapat perulangan for in, yang bisa digunakan untuk mengakses seluruh data list secara automatis 
   */

  var names = <String>['fachmi', 'Ramadhan', 'Bahri'];

  // tanpa for in
  // for(var i = 0; i < names.length; i++){
  //   print(names[i]);
  // }

  // menggunakan for in
  for(var value in names){
    print(value);
  }


}