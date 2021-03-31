//거리 n과 그 단위 s를 입력 받아 mm로 변환해 출력하시오
//입력되는 거리의 단위는 km, m, cm의 3 종류로, 각각 다음과 같이 변환 할 수 있습니다.
//1km = 1000m
//1m = 100cm
//1cm = 10mm

//입력
//출력

//1 km
//1000000

//54 km
//540000000

//2 cm
//20

//12 m
//12000
void main() {
  Exam exam = Exam();
  print(exam.solution(3, 'km'));
  print(exam.solution(5, 'm'));
}

class Exam {
  String solution(int n, String s) {
    String result = '';
    int c = 10;
    int m = c * 100;
    int km = m * 1000;

    if (s == 'km') {
      result = '${km * n}';
    } else if (s == 'm') {
      result = '${m * n}';
    } return result;
  }
}
