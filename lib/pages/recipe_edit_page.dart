import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fudy/models/recipe.dart';
import 'package:fudy/utils/constants.dart';

// ignore: must_be_immutable
class EditRecipePage extends StatefulWidget {
  EditRecipePage({super.key, this.recipe});
  Recipe? recipe;

  @override
  State<EditRecipePage> createState() => _EditRecipePageState();
}

class _EditRecipePageState extends State<EditRecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                          backgroundImage: AssetImage(widget.recipe!.imageUrl),
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
                    decoration: const InputDecoration(
                      hintText: 'Type recipe quantity here',
                    ),
                  ),
                  kItemHSpaceing28,
                  SizedBox(
                    width: double.maxFinite,
                    child: FilledButton(
                      onPressed: () {},
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
}
