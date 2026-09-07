import 'dart:io';
void main() {
  print("Enter number of terms:");
  int n = int.parse(stdin.readLineSync()!);
  int a = 0, b = 1;
  print("Fibonacci Series:");
  for (int i = 0; i < n; i++) {
    print(a);
    int c = a + b;
    a = b;
    b = c;
  }
}