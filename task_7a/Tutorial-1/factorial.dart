import 'dart:io';
void main() {
  print("Enter a number:");
  int n = int.parse(stdin.readLineSync()!);
  if(n < 0){
       print("NEgative number doesn't have factorial");
}
  int fact = 1;
  for (int i = 1; i <= n; i++) {
    fact *= i;
  }
  print("Factorial = $fact");
}