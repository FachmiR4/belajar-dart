// ...existing code...
import 'dart:mirrors';

abstract class CategoryRepository {
  id(String id);
  name(String name);
  quantity(int quantity);
  location(String location);
}

class Repository extends CategoryRepository {
  final String _name;

  Repository(this._name);

  @override
  dynamic noSuchMethod(Invocation invocation) {
    var member = MirrorSystem.getName(invocation.memberName);
    // jika setter, hapus trailing '='
    if (invocation.isSetter && member.endsWith('=')) {
      member = member.substring(0, member.length - 1);
    }

    // ambil nilai jika ada argumen posisi
    var value = invocation.positionalArguments.isNotEmpty
        ? invocation.positionalArguments.first
        : null;

    // buat SQL sederhana (contoh)
    var sql = value != null
        ? "select * from $_name where $member = '$value';"
        : "select * from $_name where $member;";

    print(sql);

    return null;
  }
}