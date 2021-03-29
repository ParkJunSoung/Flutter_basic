import 'package:flutter_app/character/cleric.dart';
import 'package:flutter_app/character/hero.dart';
import 'package:flutter_app/equipment/sword.dart';
//프로그램 전체적으로 공유
//좋은방법은 아니다
// top level 변수
int money = 100;
void main() {
  //생성자를 통한 초기화
  //홍길동 영웅 생성
  Hero hero = Hero('홍길동', 50);
  Hero hero2 = Hero('홍길동', 50);
  //공동재산 사용
  Hero.money = Hero.money - 10;
  //불의검 생성
  Sword sword = Sword(100, 500, '불의힘을담고있어', '불의검');
  //홍길동 한테 불의검 주기
  hero.sword = sword;
  //홍길동이 공격
  hero.attack();
  //hp 프로퍼티
  print(hero.hp);
  //더이상 이름,hp 설정을 할 수 없다.
  //버그를 줄이기 위해서 (사람이 실수하는 것을 막기 위해서)
  Cleric cleric = Cleric('아서스', 100, 50);
  cleric.selfAid();

}
