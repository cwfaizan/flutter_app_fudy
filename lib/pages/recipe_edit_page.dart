import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fudy/models/api_auth.dart';
import 'package:fudy/models/recipe.dart';
import 'package:fudy/network/network_client.dart';
import 'package:fudy/utils/constants.dart';
import 'package:fudy/utils/util.dart';

import '../models/category.dart';

// ignore: must_be_immutable
class EditRecipePage extends StatefulWidget {
  EditRecipePage({super.key, this.recipe});
  Recipe? recipe;

  @override
  State<EditRecipePage> createState() => _EditRecipePageState();
}

class _EditRecipePageState extends State<EditRecipePage> {
  List<Category> categoryList = [];
  Category? selectedCategory;
  final nc = NetworkClient();
  final titleControl = TextEditingController();
  final priceControl = TextEditingController();
  final quantityControl = TextEditingController();

  @override
  void initState() {
    initData();
    super.initState();
  }

  Future<void> initData() async {
    final res = await nc.get('api/categories', token: ApiAuth.token);
    if (res.statusCode == 200) {
      Map<String, dynamic> mp = json.decode(res.toString());
      categoryList = (mp['data'] as List)
          .map((e) => Category(e['id'], e['title']))
          .toList();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios)),
        title: Text(widget.recipe != null ? 'Edit Recipe' : 'Add New Recipe'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.recipe != null)
                    Center(
                      child: SizedBox(
                        height: 196.h,
                        width: 196.w,
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage(widget.recipe!.imageUrl),
                        ),
                      ),
                    ),
                  kItemHSpaceing28,
                  Text(
                    'Title',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  kItemHSpaceing12,
                  TextFormField(
                    controller: titleControl,
                    decoration: const InputDecoration(
                      hintText: 'Type recipe title here',
                    ),
                  ),
                  kItemHSpaceing28,
                  Text(
                    'Price',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  kItemHSpaceing12,
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: priceControl,
                    decoration: const InputDecoration(
                      hintText: 'Type recipe price here',
                    ),
                  ),
                  kItemHSpaceing28,
                  Text(
                    'Quantity',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  kItemHSpaceing12,
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: quantityControl,
                    decoration: const InputDecoration(
                      hintText: 'Type recipe quantity here',
                    ),
                  ),
                  kItemHSpaceing28,
                  Text(
                    'Category',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  kItemHSpaceing12,
                  SizedBox(
                    width: double.maxFinite,
                    child: DropdownButton<Category>(
                      value: selectedCategory,
                      items: categoryList.map((category) {
                        return DropdownMenuItem(
                          value: category,
                          child: Text(category.title),
                        );
                      }).toList(),
                      onChanged: (value) => setState(() {
                        selectedCategory = value;
                      }),
                    ),
                  ),
                  kItemHSpaceing28,
                  SizedBox(
                    width: double.maxFinite,
                    child: FilledButton(
                      onPressed: () {
                        if (widget.recipe != null) {
                          updateForm();
                        } else {
                          saveForm();
                        }
                      },
                      child: Text(widget.recipe != null ? 'Update' : 'Save'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> saveForm() async {
    final param = {
      'title': titleControl.text,
      'price': priceControl.text,
      'quantity': quantityControl.text,
      'category_id': selectedCategory!.id,
    };
    final res = await nc.post('api/recipes',
        queryParameters: param, token: ApiAuth.token);
    if (res.statusCode == 201) {
      // ignore: use_build_context_synchronously
      Utility.showMessage(context, 'Successfully Saved');
    }
  }

  Future<void> updateForm() async {
    final param = {
      'title': titleControl.text,
      'price': priceControl.text,
      'quantity': quantityControl.text,
      'category_id': selectedCategory!.id,
    };
    final res = await nc.post('api/recipes/${widget.recipe?.id}',
        queryParameters: param, token: ApiAuth.token);
    if (res.statusCode == 201) {
      // ignore: use_build_context_synchronously
      Utility.showMessage(context, 'Successfully Updated');
    }
  }
}
