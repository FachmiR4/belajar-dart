/** Inheritance
 * Inheretance atau warisan adalah kemampuan untuk menurunkan sebuah class ke class lain dalam artian, kita bisa membuat class parent dan class child
 * class child, hanya bisa punya satu class parent, namun satu class parent bisa punya banyak class child
 * saat sebuah class duturunkan maka semua field dan method yang ada diclass parent, secara otomatis akan dimiliki oleh class child
 * untuk melakyukan pewarisan, di class child, kita harus menggunakan kata kunci extends lalu diikuti dengan nama class parent
 */

class Manager {
  String? nama;
  int? gaji;

  void tampilkanInfo() {
    print("Nama Manager: $nama");
    print("Gaji Manager: $gaji");
  }
}
class Supervisor extends Manager {
  String? departemen;

  void tampilkanInfoSupervisor() {
    print("Departemen Supervisor: $departemen");
  }
}
// void main() {
//   var supervisor = Supervisor();
//   supervisor.nama = "Budi";
//   supervisor.gaji = 8000000;
//   supervisor.departemen = "IT";

//   var manager = Manager();
//     manager.nama = "Andi";
//     manager.gaji = 10000000;

//   manager.tampilkanInfo(); // Memanggil method dari class parent (Manager)
//   supervisor.tampilkanInfo(); // Memanggil method dari class parent (Manager)
//   supervisor.tampilkanInfoSupervisor(); // Memanggil method dari class child (Supervisor)
// }

/**Method Overriding
 * Method overriding adalah kemampuan mendeklarasikan ulang method di child class , yang sudah ada di parent class
 * saat ini kita melakukan proses overridng tersebut, scara otomatis ketika kita membuat object dari class child, method yang diclass parent tidak bisa diakses lagi
 * saat melakuakan overriding, kita harus pastikan deklarisi method nya harus sama dengan method di class parent
 * jika kita ingin mengakses method yang ada di class parent, kita bisa menggunakan kata kunci super.namaMethod()
 */

class Karyawan {
  String? nama;
  int? gaji;

  void tampilkanInfo(String nama, int gaji) {
    print("Nama Karyawan: $nama");
    print("Gaji Karyawan: $gaji");
  }
}

class Staff extends Karyawan {
  @override
  void tampilkanInfo(String nama, int gaji) {
    // Memanggil method dari class parent (Karyawan)
    // super.tampilkanInfo();
    print("Nama Staff: $nama, Gaji Staff: $gaji");
  }
}

// void main() {
//   var staff = Staff();
//   staff.nama = "Siti";
//   staff.gaji = 5000000;

//   staff.tampilkanInfo(staff.nama!, staff.gaji!); // Memanggil method yang sudah di override di class child (Staff)
// }

/** field overriding
 * field overriding adalah kemampuan mendeklarasikan ulang field di child class , yang sudah ada di parent class
 * saat kita melakukan proses overriding tersebut, scara otomatis ketika kita membuat object dari class child, field yang diclass parent tidak bisa diakses lagi
 * saat melakuakan overriding, kita harus pastikan deklarisi field nya harus sama dengan field di class parent
 * jika kita ingin mengakses field yang ada di class parent, kita bisa menggunakan kata kunci super.namaField
 */

class Person {
    String? nama;
    int? umur;

    void tampilkanInfo() {
      print("Nama: $nama");
      print("Umur: $umur");
    }
}

class Employee extends Person {
    @override
    String? nama; // Field overriding
    @override
    int? umur; // Field overriding
    String? posisi;

    @override
    void tampilkanInfo() {
      print("Nama Employee: $nama");
      print("Umur Employee: $umur");
      print("Posisi Employee: $posisi");
    }
}

// void main() {
//   var employee = Employee();
//   employee.nama = "Rina";
//   employee.umur = 28;
//   employee.posisi = "Developer";

//   employee.tampilkanInfo(); // Memanggil method yang sudah di override di class child (Employee)
// }   

/** SUper Constructor 
 * Tidak hanya untuk mengakses method dan field di class parent, kita juga bisa mengakses constructor yang ada di class parent menggunakan kata kunci super()
 * kita bisa memanggil super() di dalam constructor class child
 * namun syaratnya untuk mengakses parent class constructor, kita harus mengaksesnya dalam class child constructor
 * memanggil super constructor hanya bisa dilakukan dalam bentuk redirecting constructor
 */
class Animal {
  String? nama;

  Animal(this.nama);

  void tampilkanInfo() {
    print("Nama Hewan: $nama");
  }
}

class Dog extends Animal {
  String? breed;

  Dog(String nama, this.breed) : super(nama); // Memanggil constructor dari class parent (Animal)

  @override
  void tampilkanInfo() {
    super.tampilkanInfo(); // Memanggil method dari class parent (Animal)
    print("Breed Anjing: $breed");
  }
}
void main() {
  var dog = Dog("Buddy", "Golden Retriever");
  dog.tampilkanInfo(); // Memanggil method yang sudah di override di class child (Dog)
}