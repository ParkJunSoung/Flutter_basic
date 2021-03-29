//히어로 타입을 생성
import 'package:flutter_app/equipment/sword.dart';

class Hero {
  //공유자원
  static int money = 100;

  // field, 전역변수, global variable
  String _name;
  int _hp; //여기 hp는 다름
  Sword sword;
  //생성자
  Hero(this._name, this._hp);
  //외부에서 읽기 위해 제공하는 프로퍼티
  int get hp => _hp;

  void attack() {
    // 지역변수 hp, local variable
    _hp = _hp - 5;
    print('$_name이 공격!!!!!!!!!!');
    //칼이있으면 칼공격을 해라!
    if (sword != null) {
      sword.attack();
    }
  }
}
