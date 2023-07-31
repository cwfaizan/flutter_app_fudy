import 'package:flutter/material.dart';
import 'package:fudy/widgets/home_card.dart';

class Gridview extends StatefulWidget {
  const Gridview({super.key});

  @override
  State<Gridview> createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 24.0,
          mainAxisSpacing: 24.0,
          children: List.generate(6, (index) {
            return Center(child: HomeCard());
          })),
    );
  }
}
