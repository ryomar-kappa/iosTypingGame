import 'package:flutter/material.dart';

enum QuizCondition {
  beforeAnswer(
      icon: Icon(
    Icons.clear,
    color: Colors.transparent,
  )),
  correct(
      icon: Icon(
    Icons.circle_outlined,
    size: 200,
    color: Colors.red,
  )),
  inCorrect(icon: Icon(Icons.clear));

  final Icon icon;

  const QuizCondition({required this.icon});
}
