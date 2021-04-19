// 빠르게 승패를 가를 때 많이 사용하는 게임이다. 두 사람이 하는 가위바위보는 아래와 같은 규칙으로 진행된다.
//
// 각 사람은 가위, 바위, 보 중 하나를 선택할 수 있으며 한 번 선택하면 이를 바꿀 수 없다.
// 바위를 선택한 사람은 가위를 선택한 사람으로부터 승리한다.
// 가위를 선택한 사람은 보를 선택한 사람으로부터 승리한다.
// 보를 선택한 사람은 바위를 선택한 사람으로부터 승리한다.

  import 'dart:io';
  void main() {
    List<int> input =
    stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();
    List<person> people = input.map((e) => person(e)).toList();
    for (int i = 0; i < people.length; i++) {
      for (int j = 0; j < people.length; j++) {
        people[i].isWin(people[j]);
      }
    }
    int result = 0;
    for (var person in people) {
      if (person.winner) {
        result++;
      }
    }
    print(result);
  }
  class person {
    int hand; // 1,2,3 =>가위, 바위, 보
    bool winner = false;

    person(this.hand);

    bool isWin(person other) {
      bool result = false;
      if (hand == 1 && other.hand == 3) {
        winner = true;
        result = true;
      } else if (hand - other.hand == 1) {
        winner = true;
        result = true;
      }
      return result;
    }
  }