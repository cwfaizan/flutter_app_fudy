import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlertDilogPage extends StatefulWidget {
  const AlertDilogPage({super.key});

  @override
  State<AlertDilogPage> createState() => _AlertDilogPageState();
}

class _AlertDilogPageState extends State<AlertDilogPage> {
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text(
        "Cancel",
        style: TextStyle(color: Colors.deepPurpleAccent),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget cancelButton = SizedBox(
      height: 57.h,
      width: 326.w,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff503E9D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Text(
          "Delete",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: const Color(0xffFDFDFD),
          ),
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
            "Removed from your cart?",
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xff2F2F2F)),
          )
        ],
      ),
      content: const Text(
          "This menu will be removed from your cart and if you want it again you will have to add it again."),
      actions: [
        Column(
          children: [cancelButton, okButton],
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAlertDialog(context);
            setState(() {});
          },
          child: const Text("data"),
        ),
      ),
    );
  }
}
