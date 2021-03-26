import 'dart:io';

import 'dart:math';

void main() {
  Hero hero = Hero(); //인스턴스를 생성
  hero.name = '슈퍼맨';
  hero.hp = 100;

  Hero hero2 = Hero();
  hero.name = '배트맨';
  hero.hp = 60;

  hero.attack();
  print(hero.name);
// Hero 타입을 새로 만들었다.
}
class Hero {
  // field, 전역변수, global variable
  String name;
  int hp; //여기 hp는 다름

  void attack() {
    // 지역변수 hp, local variable
    int hp = 100;
    print('공격!!!!!!!!!!');
  }
}

/*class Cleric {
  String name;
  int hp;
  int maxHp 50;
  int mp;
  int maxMp 10;
  int second; // ctrl + B
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
    Random random = Random();
    int add = second + random.nextInt(3);
    mp = min(mp + add, maxMp);
    return add;
  }
}*/
class Cleric {
  final int maxHp = 50;
  final int maxMp = 10;
  String name;
  int hp = 50;
  int mp = 10;
  // MP 5소비로 자신의 HP를 최대 HP까지 회복할 수 있다.
  void selfAid() {
    if (mp < 5) {
      return;
    }
    mp = mp - 5;
    hp = maxHp;
  }
  // mp 회복, 회복량은 기도한 시간(초)에 랜던하게 0~2포인트의 보정을 한 양이다.
  // 단, 최대 MP보다 더 회복하는 것은 불가능하다.
  int pray(int second) {
    Random rnd = Random();
    // 회복할 MP량
    int recoverMp = rnd.nextInt(3) + second;
    if (maxMp < recoverMp + mp) {
      recoverMp = maxMp - mp;
    }
    mp = min(mp + recoverMp, maxMp);
    // 실제로 회복한 량??
    return recoverMp;
  }
}






