void main() {
  //Sort
  List<int> number = [3, 5, 1, 2, 6, 9, 8];
  // 리턴을 안한다. void sort() : 객체자체가 변경이 될 것 이다.
  number.sort(); // 오름차순으로 정렬
  // 리턴을 하고 있다.
  // 반복되는 타입 -> Iterable
  List<int> reveredNumbers = number.reversed.toList();
  print(reveredNumbers);
  print(number.reversed);
  String str = 'abcdfs';
  print(str == 'abc');
  print(str.substring(1));
  print(str.substring(2, 6)); // end - start : 갯수   6-2 = 4개문자 추출
  String str2 = 'abcd';
  print(str2.isEmpty);
  print(str2.length == 0);

  print(str.contains('d'));// 포함하는지
  print(str.toLowerCase());// 소문자로
  print(str.toUpperCase());// 대문자로
  print(str); //소문자일까 대문자일까 = 소문자
  //스트링 문자열은 객체값이 변경이 되지않는다. void가 없다는뜻
  String temp = str2.replaceAll('a', 'A');
  print(temp);
  print(str.replaceAll('a', 'A'));//소문자  a를 대문자로바꾸자
  print(str.replaceAll('ab', 'ZZ'));

  print(str2.startsWith('ab')); //true
  print(str2.startsWith('bb')); //false

  print(str2.endsWith('d')); // true

  print(str2.indexOf('c')); // 2: 몇번째 인덱스인지
  print(str2.trim()); //좌우공백제거


}

