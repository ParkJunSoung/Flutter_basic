class Sword {
  //전역변수 필드변수 글로벌
  int _damage;
  int _price;
  String _description;
  String _name;

  Sword(this._damage, this._price, this._description, this._name); //알트 + 인서트

  int get damage => _damage;

  int get price => _price;

  String get description => _description;

  String get name => _name;

  void attack() {
    print('$name으로 $damage를 주었다!!!!!');
  }
}
