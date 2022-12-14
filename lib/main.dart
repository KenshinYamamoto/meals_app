import 'package:flutter/material.dart';

import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';
import './screens/meal_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
        // 背景
        canvasColor: Color.fromRGBO(225, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyLarge: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyMedium: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            titleLarge: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'RobotoCondensed',
            ),
            titleMedium: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // initial is /
      routes: {
        // シンプルな「/」はホームを指す
        '/': (ctx) => CategoriesScreen(),

        // category_itemのTapされたらCategoryMealsScreenに遷移します。
        // ここで、コンストラクタに値を入れる必要はありません
        // CategoryMealsScreenに記載されているstatic constの値
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      // routesにヒットしなかったらこっちの関数実行
      // onGenerateRoute: (settings) {
      //   print(settings.name);
      //   return MaterialPageRoute(
      //     builder: (ctx) => CategoriesScreen(),
      //   );
      // },

      // Flutterが全ての手段を用いても画面の構築に失敗した場合この関数を実行
      // ここに、「そのページは見つかりません」みたいなページを用意すれば良い
      onUnknownRoute: (settings) {
        print(settings.name);
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },
    );
  }
}
