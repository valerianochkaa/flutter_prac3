import 'package:flutter/material.dart';
import 'package:prac3_recipes/recipe_detail_screen.dart';

// ЭКРАН 2. Список рецептов
class RecipesScreen extends StatelessWidget {
  const RecipesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Список рецептов'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 26),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Рецепт №1',
                style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                ),
              ),

            const SizedBox(width: 116),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RecipeDetailScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text("Посмотреть рецепт"),
            ),
          ],
        ),
      ),
    );
  }
}

