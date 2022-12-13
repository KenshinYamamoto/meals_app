import 'package:flutter/material.dart';

import './dummy_data.dart';
import './category_item.dart';

// カテゴリページ(初期ページとして)に出力される画面
class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // これが初期画面で、mainにはAppBarもbodyも無いので、ここで定義してあげる。(その為のScaffold)
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DeliMeal',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: GridView(
        padding: EdgeInsets.all(25),
        // childrenにはListを渡す。ここではダミーデータをmapして渡す
        children: DUMMY_CATEGORIES
            .map(
              (catData) => CategoryItem(
                catData.id,
                catData.title,
                catData.color,
              ),
            )
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, // グリッドアイテムの幅
          // アイテムの高さと幅の関係(子アスペクト比)
          childAspectRatio: 3 / 2, // 横幅が200の場合、縦幅を136.7にする(3:2の関係)
          // 行の間に20px分のスペースを確保
          crossAxisSpacing: 20,
          // 列の間に20px分のスペースを確保
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
