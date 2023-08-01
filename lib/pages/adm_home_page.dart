import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fudy/widgets/favourite_card.dart';

class AdmHomePage extends StatelessWidget {
  const AdmHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.all(20.0),
          child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: GridView.count(
              crossAxisSpacing: 20.w,
              mainAxisSpacing: 32.h,
              crossAxisCount: 2,
              childAspectRatio: 177.w / 257.h,
              children: List.generate(
                200,
                (index) => const FavouriteCard(
                  imageUrl: "https://via.placeholder.com/152x190",
                  title: 'Salad with Bread',
                  price: 8.2,
                  isFavourite: true,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
