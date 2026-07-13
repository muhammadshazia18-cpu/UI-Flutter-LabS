import 'dart:io';
void main() {
  print("Enter a number:");
  int n = int.parse(stdin.readLineSync()!);
  if (n % 2 == 0) {
    print("$n is Even");
  } else {
    print("$n is Odd");
  }
}