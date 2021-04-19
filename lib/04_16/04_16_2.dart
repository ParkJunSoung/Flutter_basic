
import 'dart:io';
void main() {
    Exam exam = Exam();
    List<String> inputs = stdin.readLineSync().split(' ');
    int a = int.parse(inputs[0]);
    print(exam.solution(a,inputs[1]));

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