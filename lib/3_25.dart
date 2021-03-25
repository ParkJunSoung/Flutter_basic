import 'dart:io';

void main() {
  Hero hero = Hero(); //인스턴스를 생성
  hero.name = '슈퍼맨';
  hero.hp = 100;

  Hero hero2 = Hero();
  hero.name = '배트맨';
  hero.hp = 60;

  hero.attack();
  print(hero.name);
}

// Hero 타입을 새로 만들었다.
class Hero {
  String name;
  int hp;

  void attack() {
    print('공격!!!!!!!!!!');
  }
}
