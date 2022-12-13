import 'package:flutter/material.dart';

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

    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Center(
        child: Text('The Recipes For the Category!'),
      ),
    );
  }
}
