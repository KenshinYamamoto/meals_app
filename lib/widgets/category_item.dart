import 'package:flutter/material.dart';

import '../screens/category_meals_screen.dart';

// titleとcolorを受け取って1つ1つのitemを作る
class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  void selectCategory(BuildContext ctx) {
    // pushNamedでパスとargumentsでMapを渡す。
    // (argumentで渡しているのは、category_meals_screenに渡したい物)
    // main.dartのroutesに記載あり
    Navigator.of(ctx).pushNamed(
      // CategoryMealsScreenのrouteNameに遷移する(CategoryMealScreenのstatic constに記載済み)
      CategoryMealsScreen.routeName,
      arguments: {'id': id, 'title': title},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).colorScheme.primary,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        decoration: BoxDecoration(
          // グラデーション生成
          gradient: LinearGradient(
            // Listでグラデーションを定義する
            colors: [
              color.withOpacity(0.5),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
