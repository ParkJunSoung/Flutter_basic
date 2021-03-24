import 'dart:math';
void main() {

  email('슬기로운 코딩생활', 'madox9999@gnail.com', '즐겁게 배우자!');
  email('제목 없음', 'madox9999@gnail.com', '즐겁게 배우자!');

  print('면적은 ${calcTriangleArea(5.5, 6.5)}cm');
  print('면적은 ${calcCircleArea(7.5)}cm');


}
void introduceOneself(){
  String name = '박준성';
  int age = 28;
  double inch = 175.5;
  String gender = '남자';
  print('안녕하세요 저는 $name 입니다. 제 키는 $age cm 입니다. 저는 $gender입니다.');
}
void email(String  title, String address, String text){
  print('$address 에 아래의 메일을 송신한다');
  print('제목: $title');
  print('본문: $text');
}
double calcTriangleArea(double height, double base){
  return height * base / 2;
}
double calcCircleArea(double radius){
  return (3.14 * radius * 2);
}