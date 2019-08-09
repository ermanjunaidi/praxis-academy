import 'dart:io'; 

void main() { 
   print("Masukkan Nama Anda :");            
   
   // prompt for user input 
   String name = stdin.readLineSync();  
   
   print("Hello Bp. ${name}"); 
}  