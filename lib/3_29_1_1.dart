void main() {
  Word word = Word('abcdefgherjklhnm');
  print(word.isVowel(0)); // true
  print(word.isVowel(1));
  print(word.isVowel(2));
  print(word.isVowel(3));
  print(word.isVowel(4));
  print(word.isVowel(5));
  print(word.isVowel(6));
  print(word.isVowel(7));
  print(word.isVowel(8));
  print(word.isVowel(9));
  print(word.isVowel(10));
}

class Word {
  String letters;

  Word(this.letters);

  // i번째 글자가 모음이면 true  // a, i, u, e, o
  bool isVowel(int i) => 'aiueo'.contains(letters.substring(i, i + 1).toLowerCase());

  bool isConsonant(int i) => !isVowel(i);
}
