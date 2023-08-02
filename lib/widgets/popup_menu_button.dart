import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopUpButton extends StatelessWidget {
  const PopUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PopupMenuButton(
          itemBuilder: (context) => [
            PopupMenuItem(
              child: InkWell(
                onTap: () {},
                child: ListTile(
                  leading: const Icon(Icons.person),
                  title: Text(
                    "User Profile",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff2F2F2F),
                    ),
                  ),
                ),
              ),
            ),
            PopupMenuItem(
              child: Text("data"),
            ),
            PopupMenuItem(
              child: Text("page"),
            ),
          ],
        ),
      ),
    );
  }
}
