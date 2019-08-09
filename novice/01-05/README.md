# Hari 5 | Asynchronous Programming, Konkurensi, dan Tooling

Erman Junaidi - Jumat, 9 Agustus 2019

#### Ringkasan Materi

## Async Await in Dart

'async dan Await', Setiap fungsi yang di jalankan secara tidak sinkron, perlu ditambahkan modifier async. Pengubah ini muncul tepat setelah tanda tangan fungsi.

 ```dart
 void hello() async {
  print('something exciting is going to happen here...');
}

```
## Realistyc Sample
 contoh opertasi yang berjalan lama dan menjadi non-resposif saat program berjalan
 
 ```dart
 import 'dart:async';

class Employee {
  int id;
  String firstName;
  String lastName;
  
  Employee(this.id, this.firstName, this.lastName);
}

void main() async {
  print("getting employee...");
  var x = await getEmployee(33);
  print("Got back ${x.firstName} ${x.lastName} with id# ${x.id}");
}

Future<Employee> getEmployee(int id) async {
  //Simluate what a real service call delay may look like by delaying 2 seconds   
  await Future<Employee>.delayed(const Duration(seconds: 2));
  //and then return an employee - lets pretend we grabbed this out of a database 🙂
  var e = new Employee(id, "Joe", "Coder");
  return e;
}

 ```

 jika kita jalakan maka akan muncul pesan `getting employee` setelah dua detik setelahnya akan memunculkan `employee itu dicetak`


