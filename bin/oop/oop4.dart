/** Object Class 
 * setiap class yang kita buat secara automatis adalah turunan dari object, kecuali null
 * walaupun tidak secara langsung kita eksplisit menyebutkan extends object, tapi secara otomatis akan membuat class kita extends object
 * bisa kita katakan class object adalah superclass dari semua class di dart
 */

class Person{}

// void main (){
//   var number = 100;
//   print(number.toString());

//   var person = Person();
//   print(person.toString());
// }

/**Polymorphism
 * Polymorphism adalah kemampuan suatu object untuk mengambil banyak bentuk
 * dalam dart polymorphism bisa kita lakukan dengan pewarisan (inheritance)
 * dengan pewarisan, kita bisa membuat sebuah variable dari class parent, lalu kita isi dengan object dari class child
 * dengan begitu variable tersebut bisa mengambil banyak bentuk, sesuai dengan object yang kita berikan
 * dengan polymorphism, kita bisa membuat code yang lebih fleksibel dan reusable
 * contoh polymorphism dengan pewarisan
 * dalam contoh dibawah ini, kita membuat variable manager dari class parent (Manager) lalu kita isi dengan object dari class child (Supervisor)
 * dengan begitu variable manager bisa mengambil banyak bentuk, sesuai dengan object yang kita berikan
 * dengan polymorphism, kita bisa memanggil method yang ada di class parent (Manager) meskipun object yang kita berikan adalah dari class child (Supervisor)
 * dengan begitu kita bisa membuat code yang lebih fleksibel dan reusable
 */

class manager{
  String name;
  manager(this.name);
}
class supervisor extends manager{
  supervisor(String name) : super(name);
}
class staff extends manager{
  staff(String name) : super(name);
}



void main(){
  manager manager1 = supervisor("Andi");
  manager manager2 = staff("Budi");

  print("Manager 1: ${manager1.name}");
  print("Manager 2: ${manager2.name}");

  manager manager3 = manager("Charlie");
  print(manager3);

  manager3 = supervisor("Diana");
  print("Manager 3: ${manager3.name}");

  manager3 = staff("Evan");
  print("Manager 3: ${manager3.name}");
}
