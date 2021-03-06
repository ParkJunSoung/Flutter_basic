void main() {
  Word word = Word('abcdefgherjklhnm');
  print(word.isVowel(0)); // true
  print(word.isVowel(1));
  Word dish = Word('dish');
  print(dish.toPlural()); // dishes
  Word cherry = Word('cherry');
  print(cherry.toPlural()); // cherries
  Word clock = Word('clock');
  print(clock.toPlural()); // clocks
  Word tax = Word('tax');
  print(tax.toPlural()); // taxes
  Word bench = Word('bench');
  print(bench.toPlural()); // benches
  Word tomato = Word('tomato');
  print(tomato.toPlural()); // tomatoes
  Word baby = Word('baby');
  print(baby.toPlural()); // babies
  Word leaf = Word('leaf');
  print(leaf.toPlural()); // leaves
  Word live = Word('live');
  print(live.toPlural()); // lives

}

class Word {
  String letters;

  Word(this.letters);

  // i번째 글자가 모음이면 true  // a, i, u, e, o
  bool isVowel(int i) =>
      'aiueo'.contains(letters.substring(i, i + 1).toLowerCase());

  // i번째 글자가 자음이면
  bool isConsonant(int i) => !isVowel(i);

  //복수형으로 변환
  String toPlural() {
    String result = '${letters}s';
    // s, x, ch, sh : -es
    if (letters.endsWith('s') ||
        letters.endsWith('x') ||
        letters.endsWith('ch') ||
        letters.endsWith('sh') ||
        letters.endsWith('o')) {
      result = '${letters}es';
    } else if (letters.endsWith('f')) {
      // f -> ves
      result = '${letters.substring(0, letters.length - 1)}ves';
    } else if (letters.endsWith('fe')) {
      // fe -> ves
      result = '${letters.substring(0, letters.length - 2)}ves';
    } else if (isConsonant(letters.length - 2) && letters.endsWith('y')) {
      // 자음 + y : y -> ies
      result = '${letters.substring(0, letters.length - 1)}ies';
    }
    return result;
  }




