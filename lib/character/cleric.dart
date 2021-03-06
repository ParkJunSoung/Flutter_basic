import 'dart:math';
class Cleric {
  final int maxHp = 50;
  final int maxMp = 10;
  String _name;
  int _hp;
  int _mp;
  Cleric(this._name, this._hp, this._mp);
  // MP 5소비로 자신의 HP를 최대 HP까지 회복할 수 있다.
  void selfAid() {
    if (_mp < 5) {
      return;
    }
    _mp = _mp - 5;
    _hp = maxHp;
  }

  // mp 회복, 회복량은 기도한 시간(초)에 랜던하게 0~2포인트의 보정을 한 양이다.
  // 단, 최대 MP보다 더 회복하는 것은 불가능하다.
  int pray(int second) {
    Random rnd = Random();
    // 회복할 MP량
    int recoverMp = rnd.nextInt(3) + second;
    if (maxMp < recoverMp + _mp) {
      recoverMp = maxMp - _mp;
    }
    _mp = min(_mp + recoverMp, maxMp);
    // 실제로 회복한 량??
    return recoverMp;
  }
}