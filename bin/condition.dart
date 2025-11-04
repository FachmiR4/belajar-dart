void main(){
  var nilai = 50;
  var absen = 90;

  if (nilai >= 90 && absen >= 90) {
    print('nilai anda A');
  }else if(nilai >= 80 && absen >= 80){
   print('nilai anda B');
  }else if(nilai >= 70 && absen >= 70){
    print('nilai anda -B');
  }else if(nilai >=  60 && absen >= 60){
    print('nilai anda C');
  }else{
    print('nilai anda D');
  }

  var nilai1 = 'E';
  // switch case
  switch (nilai1) {
    case 'A':
      print('wow anda lulus dengan baik');
      break;
    case 'B':
    case 'C':
      print('Anda lulus');
      break;
    case 'D':
      print('anda Tidak Lulus');
      break;
    default:
      print('Mungkin Anda Salah Jurusan');
  }
 
  // null adalah sebuah object yang harus dideklarasikan
  // contoh :
  int number1;
  number1 = 10;
  // number1 = null; //error

  int? number2;
  number2 = null;

  print(number2);
  print(number1);

  // ternary oprator adalah singkatnya dari kondisi if

  var nilai2 = 65;
  var pernyataan = nilai2 >= 70 ? 'anda lulus ujian' : 'silahkan coba lagi';

  print(pernyataan);

  // null sefety
  /**
   * dibeberapa bahasa pemrograman, NullPointerException adalah salah satu kesalahan yang sering terjadi yang dilakukan oleh programer.
   * biasanya NullPointerException terjadi ketika kita mengakses sebuah data, yang ternyata datanya tersebut adalah null
   * dart mendukung null sefety, dimana ini bisa membantu programmer dari melakukan kesalahan mengakses data yang bisa null.  
   */

  // null check berfungsi untuk mengecek terlebih dahulu sebelum mengakses data nullablenya
  int? age = null;
  age = 1;

  if(age != null){
    double ageDouble = age.toDouble();
    print(ageDouble);
  }

  // konversikan dari tidak null ke nullable
  String name = 'fachmi';
  String? nullableName = name;

  // konversikan dari null ke tidak nullable
  int? nullablePrice = null;
  if(nullablePrice != null){
    int price = nullablePrice;
  }

  // default value
  String? guest;
  // guest = 'fachmi';
  String guesName = guest ?? 'Guest';
  print(guesName);

  // konveri secara paksa
  // int? nullableNumber;
  // nullableNumber = 10;
  // int notNullableNumber = nullableNumber!; // jika data adalah null maka akan error

  // untuk mengakses data yang bisa nullable maka berikan ?
  int? dataInt ; // = 10
  double? dataDouble = dataInt?.toDouble();

  print(dataDouble);

}