import 'package:flutter/material.dart';
import 'package:fudy/widgets/favourite_card.dart';

class AdmHomePage extends StatelessWidget {
  const AdmHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: FavouriteCard(
            imageUrl: "https://via.placeholder.com/152x190",
            title: 'Salad with Bread',
            price: 8.2,
            isFavourite: true,
          ),
        ), //E8E8E8
      ),
    );
  }
}
