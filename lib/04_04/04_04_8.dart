import 'dart:io';
void main() {
  // String inpust = stdin.readLineSync();
  //
  // int ten = inpust.length - inpust.replaceAll('<', '').length;
  // int one = inpust.length - inpust.replaceAll('/', '').length;
  //
  // print(ten * 10 + one );
  String input = stdin.readLineSync();
  int result = 0;
  for(int i = 0; i < input.length; i++){

    if(input[i] == '<'){
      result += 10;
    }else if (input[i] == '/'){
      result += 1;
    }
  }print(result);

}