// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fudy/pages/check_account.dart';
import 'package:fudy/pages/registeration_page.dart';
import 'package:pinput/pinput.dart';

import '../network/network_client.dart';
import '../utils/util.dart';

class OtpVerification extends StatelessWidget {
  final Map<String, dynamic> jsonData;
  OtpVerification({super.key, required this.jsonData});

  Map<String, dynamic>? data;
  final nc = NetworkClient();
  final pinPutController = TextEditingController();
  // String ?text;

  // get data => null;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 53.w,
      height: 53.h,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color(0xff503E9D)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100.h,
            ),
            Center(
                child: Text(
              "OTP Verification",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xff2F2F2F),
              ),
            )),
            SizedBox(
              height: 70.h,
            ),
            Center(
                child: Text(
              "Enter the 4-digit OTP sent via SMS ",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xffBDBDBD),
              ),
            )),
            Center(
                child: Text(
              "to confirm payment",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xffBDBDBD),
              ),
            )),
            SizedBox(
              height: 110.h,
            ),
            Center(
              child: Pinput(
                length: 4,
                controller: pinPutController,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
                // validator: (s) {
                //   return s == '2222' ? null : 'Pin is incorrect';
                // },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) => submitForm(context),
              ),
            ),
            SizedBox(
              height: 80.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 52.w),
              child: Row(
                children: [
                  Text(
                    "Did not receive?",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff503E9D)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend OTP",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff503E9D)),
                    ),
                  )
                ],
              ),
            ),
            // data = jsonData.entoString()
// print(entryList[0].key);
            // data=jsonData.keys.toString(),
            Text(jsonData['pin_message'].toString())
          ],
        ),
      ),
    );
  }

  Future<void> submitForm(BuildContext context) async {
    try {
      final param = {
        'item': jsonData['item'].toString(),
        'user_id': 3,
        'pin_type': jsonData['pin_type'].toString(),
        'pin': pinPutController.text.toString(),
      };
      final res = await nc.get('api/verify-pin', queryParameters: param);
      if (res.statusCode == 200) {
        Map<String, dynamic> mp = json.decode(res.toString());

        // ignore: use_build_context_synchronously
        Utility.showMessage(context, mp['message']);
        Map<String, dynamic> data = mp['data'];

        // ignore: use_build_context_synchronously
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const RegistrationPage()),
        );
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
