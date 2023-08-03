import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessDiloge extends StatefulWidget {
  const SuccessDiloge({super.key});

  @override
  State<SuccessDiloge> createState() => _SuccessDilogeState();
}

class _SuccessDilogeState extends State<SuccessDiloge> {
  showAlertDialog(BuildContext context) {
    // set up the button

    Widget cancelButton = SizedBox(
      width: 326.w,
      child: FilledButton(
        onPressed: () {},
        child: const Text(
          "Done",
        ),
      ),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Column(
        children: [
          Center(child: Image.asset("assets/images/s.png")),
          SizedBox(
            height: 37.h,
          ),
          Center(
            child: Text(
              "Yeay!!!",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff503E9D)),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Text(
            "You have successfully placed an order",
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xff2F2F2F)),
          )
        ],
      ),
      content: const Text(
          "We have successfully received your order, we will always track its progress and keep you updated"),
      actions: [
        Column(
          children: [
            cancelButton,
          ],
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
