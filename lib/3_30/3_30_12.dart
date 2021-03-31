//다음과 같이 A~Z 까지 알파벳 대문자 중에서 한 문자 s를 입력받습니다.
//ABCDEFGHIJKLMNOPQRSTUVWXYZ
//
//A를 1번째로 하면 C는 3번째입니다.
//입력받은 문자가 몇 번째 문자인지 출력하시오
//
//입력
//출력
//
//C
//3
//
//X
//24
void main() {

  Exam exam = Exam();
  print(exam.solution('A'));
  print(exam.solution('S'));
}
class Exam {
  String solution(String s) {
    List<String> list = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V,','W','X','Y','Z'];
    String result = '';
    for(int i = 0; i < list.length; i++){
      if(s == list[i]) {
        result = '${i + 1}';
      }
    } return result;
  }
}
//베스트 답변  인덱스 에 뭘 넣을꺼냐 ? (알파벳 변수를 받을것이다.)
// class Exam {
//   int solution(String alphabet) {
//     return 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.indexOf(alphabet) + 1;
//   }
// }