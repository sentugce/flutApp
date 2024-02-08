import 'package:flutapp/widgets/RecommendedRecipes.dart';
import 'package:flutter/material.dart';
import 'package:flutapp/widgets/RecipeSildes.dart';

class Recipe extends StatelessWidget {
  const Recipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: <Widget>[
                RecipeSildes(),
                RecommendedRecipes()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
