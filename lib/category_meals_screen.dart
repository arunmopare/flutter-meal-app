import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final categoryId;
  // final categorytitle;

  // CategoryMealsScreen(this.categoryId, this.categorytitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)
        .settings
        .arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle,
        ),
      ),
      body: Center(
        child: Text(
          'The recepies for selected category',
        ),
      ),
    );
  }
}
