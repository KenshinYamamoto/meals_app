import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  // インスタンス化なしで使用可能な変数
  // 「ここは、category-mealsですよ」という感じ
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    // category_itemからmainを通じて遷移する際、category_itemに記載したargumentsを取得する
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    // Mapから値を取得する為、この書き方
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    final categoryMeals = DUMMY_MEALS.where(
      (meal) {
        return meal.categories.contains(categoryId);
      },
    ).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          // return Text(categoryMeals[index].title);
          return MealItem(
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration,
              complexity: categoryMeals[index].complexity,
              affordability: categoryMeals[index].affordability);
        }),
        itemCount: categoryMeals.length,
      ),
    );
  }
}
