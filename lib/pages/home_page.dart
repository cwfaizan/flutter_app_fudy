import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Container(
                      // height: 600,
                      child: Text('data'),
                    ),
                  );
                },
                child: Text(
                  'Home Page',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
