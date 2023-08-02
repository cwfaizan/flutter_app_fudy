import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fudy/models/recipe.dart';
import 'package:fudy/widgets/recipe_home_card.dart';

import 'recipe_edit_page.dart';

class RecipeHomePage extends StatefulWidget {
  const RecipeHomePage({super.key});

  @override
  State<RecipeHomePage> createState() => _RecipeHomePageState();
}

class _RecipeHomePageState extends State<RecipeHomePage> {
  var recipeList = [
    for (int i = 0; i < 200; i++)
      Recipe(
        title: 'Vegetable Salad $i',
        imageUrl: 'assets/images/recipe.jpg',
        price: 20.5,
        quantity: (i ~/ 3) + 3,
      )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fudy'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => EditRecipePage(),
              ));
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView.builder(
            itemCount: recipeList.length,
            itemBuilder: (context, index) => Dismissible(
              key: UniqueKey(),
              onDismissed: (direction) {
                setState(() {
                  recipeList.removeAt(index);
                });
              },
              confirmDismiss: (DismissDirection direction) async {
                if (direction == DismissDirection.startToEnd) {
                  return await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Edit Recipe"),
                        content: const Text(
                            "Are you sure you want to edit this recipe?"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EditRecipePage(
                                      recipe: recipeList.elementAt(index)),
                                ));
                              },
                              child: const Text("Yes")),
                          ElevatedButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: const Text("No"),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  return await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Delete Recipe"),
                        content: const Text(
                            "Are you sure you want to delete this recipe?"),
                        actions: [
                          ElevatedButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              child: const Text("Yes")),
                          ElevatedButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: const Text("No"),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              background: Padding(
                padding: REdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(Icons.edit,
                        color: Theme.of(context).colorScheme.primary),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text('Swipe to edit',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary)),
                  ],
                ),
              ),
              secondaryBackground: Padding(
                padding: REdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('Swipe to delete',
                        style: TextStyle(color: Colors.red)),
                    SizedBox(
                      width: 8.w,
                    ),
                    const Icon(Icons.delete, color: Colors.red),
                  ],
                ),
              ),
              child: RecipeHomeCard(recipe: recipeList.elementAt(index)),
            ),
          ),
        ),
      ),
    );
  }
}
