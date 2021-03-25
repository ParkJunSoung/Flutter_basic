import 'dart:io';

import 'dart:math';

void main() {
  /*Hero hero = Hero(); //인스턴스를 생성
  hero.name = '슈퍼맨';
  hero.hp = 100;

  Hero hero2 = Hero();
  hero.name = '배트맨';
  hero.hp = 60;

  hero.attack();
  print(hero.name);*/
// Hero 타입을 새로 만들었다.
}
/*class Hero {
  // field, 전역변수, global variable
  String name;
  int hp; //여기 hp는 다름

  void attack() {
    // 지역변수 hp, local variable
    int hp = 100;
    print('공격!!!!!!!!!!');
  }
}*/

class Cleric {
  String name;
  int hp;
  int maxHp;
  int mp;
  int maxMp;
  int second;

  void selfAid() {
    int hill = mp - 5;
    int full = hp + 50;

    full = maxHp;
    hill = mp;
    if (hp > maxHp) {
      hp = maxHp;
      print('체력이 모두 회복되었습니다.');
    } else if (mp <= 4) {
      print('MP가 부족하여 스킬을 사용할 수 없습니다.');
    }
  }

  int pray(int second) {
    Random recovery = Random();
    int add = second + recovery.nextInt(3);
    mp = add + mp;
    if (mp <= maxMp) {
      mp = 10;
    }
    return add;
  }
}
