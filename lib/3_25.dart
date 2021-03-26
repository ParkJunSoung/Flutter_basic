
import 'package:flutter_app/character/hero.dart';

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







