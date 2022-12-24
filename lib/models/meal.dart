import 'package:flutter/foundation.dart';

// 料理の難易度を記載した列挙型
enum Complexity {
  Simple,
  Challenging,
  Hard,
}

// 価格による感想
enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  // 識別子
  final String id;
  // 複数のカテゴリに所属する可能性あり
  final List<String> categories;
  // 料理名
  final String title;
  // 画像URL
  final String imageUrl;
  // 材料
  final List<String> ingredients;
  // 作り方
  final List<String> steps;
  // 時間
  final int duration;
  // 料理の難易度
  final Complexity complexity;
  // 価格による感想
  final Affordability affordability;

  // 料理のフィルタ
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Meal({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
  });
}
