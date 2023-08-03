import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fudy/models/api_auth.dart';
import 'package:fudy/models/recipe.dart';
import 'package:fudy/widgets/recipe_home_card.dart';

import '../network/network_client.dart';
import 'recipe_edit_page.dart';

class RecipeHomePage extends StatefulWidget {
  const RecipeHomePage({super.key});

  @override
  State<RecipeHomePage> createState() => _RecipeHomePageState();
}

class _RecipeHomePageState extends State<RecipeHomePage> {
  List<Recipe> recipeList = [];
  final nc = NetworkClient();

  @override
  void initState() {
    initData();
    super.initState();
  }

  initData() async {
    final res = await nc.get('api/recipes', token: ApiAuth.token);
    if (res.statusCode == 200) {
      Map<String, dynamic> mp = json.decode(res.toString());
      recipeList = (mp['data'] as List)
          .map((e) => Recipe(
                id: e['id'],
                title: e['title'],
                imageUrl: e['image_url'],
                price: e['price'],
                quantity: e['quantity'],
              ))
          .toList();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    showAlertDialog(BuildContext context) {
      // set up the button
      Widget cancelButton = TextButton(
        child: Text(
          "Cancel",
          style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700),
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );
      Widget okButton = SizedBox(
        width: 326.w,
        child: FilledButton(
          onPressed: () {},
          child: const Text(
            "Delete",
          ),
        ),
      );

      // set up the AlertDialog
      AlertDialog alert = AlertDialog(
        title: Column(
          children: [
            Center(child: Image.asset("assets/images/recipe.png")),
            SizedBox(
              height: 28.h,
            ),
            Text(
              "Removed from your Recipes?",
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff2F2F2F)),
            )
          ],
        ),
        content: const Text(
            "This menu will be removed from your List and if you want it again you will have to add it again."),
        actions: [
          Column(
            children: [okButton, cancelButton],
          ),
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

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
                        title: Column(
                          children: [
                            Center(
                                child: Image.asset("assets/images/recipe.png")),
                            SizedBox(
                              height: 28.h,
                            ),
                            Text(
                              "Want to edit this Recipe?",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff2F2F2F)),
                            )
                          ],
                        ),
                        content: const Text(
                            "Are you sure you want to edit this recipe?"),
                        actions: [
                          SizedBox(
                            width: 326.w,
                            child: FilledButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EditRecipePage(
                                      recipe: recipeList.elementAt(index)),
                                ));
                              },
                              child: const Text(
                                "Yes",
                              ),
                            ),
                          ),
                          Center(
                            child: TextButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: Text(
                                "No",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  return showAlertDialog(context);
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
