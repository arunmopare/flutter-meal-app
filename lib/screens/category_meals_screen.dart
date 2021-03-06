import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../data/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final categoryId;
  // final categorytitle;

  // CategoryMealsScreen(this.categoryId, this.categoryR=Title);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)
        .settings
        .arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    final categoryTitle = routeArgs['title'];
    return Scaffold(
        appBar: AppBar(
          title: Text(
            categoryTitle,
          ),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return Text(categoryMeals[index].title);
          },
          itemCount: categoryMeals.length,
        ));
  }
}
