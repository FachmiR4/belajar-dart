/** List 
 * list merupakan tipe data yang berisikan kumpulan data
 * dibahasa pemograman lain, tipe data ini dikenal dengan tipe array 
 * saat kita membuat list, kita perlu menentukan isi dari tipe data list
 * untuk membuat data list, kita bisa menggunakan [].
 * didart, semua tipe adalah object, dimana list sendiri memiliki property, methode dan oprator. 
 */

/** Membuat List
 * untuk membuat list, kita bisa menentukan tipe data, misalnya: 
 * List<TipeData> namaVariable = []
 * atau bisa menggunakan kata kunci var atau final:
 * var namaVariable = <tipeData>[]
 * final NamaVariable = <tipeData>[] 
 */

/** Manipulasi Data Di list
 * Oprator / method = keterangan
 * list.add(value) = menambhakna ke list
 * list[index] = mengambil data list
 * list[index] = value = mengubah data list
 * list.removeAt(index) = menghapus data list, index secara otomatis akan bergeser
 */

void main(){
     List<int> ListInt = [];
     var ListString = <String>[];
     print(ListInt);
     print(ListString);


     var names = <String>[];
     names.add('fachmi');
     names.add('Ramadhan');
     names.add('Bahri');

     print(names);
     print(names.length);


     Set<int> numbers = {};
     var strings = <String>{};
     var doubles = <double>{}; 
     
     print(numbers);

     // membuat set = digunakan untuk menyimpan data yang unik atau tidak ada data duplikat
     // var names1  = <String>{};
     // names1.add('fachmi');
     // names1.add('fachmi');
     // names1.add('Ramadhan');
     // names1.add('Ramadhan');
     // names1.add('bahri');

     // deklarasi set secara langsung 
     var names1 = <String>{
          'fachmi',
          'fachmi',
          'Ramadhan',
          'ramadhan',
          'bahri',
          'bahri',
     };
     names1.add('bahri');

     print(names1);
     print(names1.length);

     names1.remove('bahri');
     print(names1);
     print(names1.length);

     // membuat map untuk mengganti data yang lama menjadi list yang baru \
     Map<String, String> map1 = {};
     var map2 = Map<String, String>();
     var map3 = <String, String>{};
     
     print(map2);

     var name = <String, String>{};

     name['first'] = 'fachmi1';
     name['middle'] = 'Ramadhan1';
     name['last'] = 'Bahri1';

     print(name);
     print(name['middle']);

     name['first'] = 'fahmi';
     print(name);

     name.remove('last');
     print(name);

     // deklarasi map secara langsung
     var name1 = <String, String>{
          'first' : 'fachim',
          'middle' : 'Ramdahan2',
          'last' : 'jago',
     };
     print(name1);

     // syimbol bisa digunakan sebagai constant
     Symbol  symbol = Symbol('fachmi Ramadhan');
     var symbol2 = #belajar_dart ;

     print(symbol);
     print(symbol2);

}