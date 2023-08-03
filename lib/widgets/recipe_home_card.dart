import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fudy/models/recipe.dart';

class RecipeHomeCard extends StatelessWidget {
  const RecipeHomeCard({super.key, required this.recipe});
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Container(
        decoration: BoxDecoration(
            // color: Color(0xffFCC50A),
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(width: 0.50.w, color: const Color(0xFFE7E7E7))),
        child: ListTile(
          minVerticalPadding: 16.w,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 0.50.w, color: const Color(0xFFE7E7E7)),
            borderRadius: BorderRadius.circular(16.r),
          ),
          leading: SizedBox(
            width: 50.w,
            height: 50.h,
            child: CircleAvatar(
              backgroundImage: AssetImage(recipe.imageUrl),
            ),
          ),
          title: Text(
            recipe.title,
            style: const TextStyle(
              color: Color(0xFF2E2E2E),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: Text(
            '\$ ${recipe.price}',
            style: const TextStyle(
              color: Color(0xFF503E9D),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Text('${recipe.quantity}'),
          ),
        ),
      ),
    );
  }
}
