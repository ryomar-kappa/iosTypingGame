import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:takayama_test/utils/list_util.dart';

const maxQuestions = 100;
final wordListProvider = Provider<WordList>((ref) => WordList());
final questionsProvider = Provider<List<Question>>((ref) {
  final List<Question> questionList = [];
  for (int i = 0; i < maxQuestions; i++) {
    final Word previousWord =
        getRandomElement(ref.read(wordListProvider).previousWordList);
    final Word nextWord =
        getRandomElement(ref.read(wordListProvider).nextWordList);
    questionList.add(Question.fromWord(previousWord, nextWord));
  }
  return questionList;
});

final class WordList {
  final List<Word> previousWordList = [
    const Word('優しい', 'やさしい'),
    const Word('楽しい', 'たのしい'),
    const Word('忌々しい', 'いまいましい'),
    const Word('爽やかな', 'さわやかな'),
    const Word('大きな', 'おおきな'),
    const Word('小さな', 'ちいさな'),
    const Word('孅い', 'かよわい'),
    const Word('軋かい', 'こまかい'),
    const Word('溽い', 'むしあつい'),
  ];
  final List<Word> nextWordList = [
    const Word('林檎', 'りんご'),
    const Word('鳥取砂丘', 'とっとりさきゅう'),
    const Word('京都', 'きょうと'),
    const Word('蜘蛛', 'くも'),
    const Word('木兎', 'みみずく'),
    const Word('不如帰', 'ほととぎす'),
    const Word('翻車魚', 'まんぼう'),
    const Word('鰯', 'いわし'),
    const Word('鰰', 'はたはた'),
  ];
}

class Word {
  const Word(this.word, this.yomigana);
  final String word;
  final String yomigana;
}

class Question {
  const Question(this.word, this.yomigana);
  Question.fromWord(Word previousWord, Word nextWord)
      : word = previousWord.word + nextWord.word,
        yomigana = previousWord.yomigana + nextWord.yomigana;
  final String word;
  final String yomigana;
}
