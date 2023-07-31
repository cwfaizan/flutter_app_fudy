import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 75.h,
          ),
          Center(
              child: Text(
            "OTP Verivication",
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xff2F2F2F),
            ),
          )),
          SizedBox(
            height: 20.h,
          ),
          Center(
              child: Text(
            "Enter the 6-digit OTP sent via SMS ",
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
            height: 60.h,
          ),
          Center(
            child: Pinput(
              length: 4,
              // controller: ,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              validator: (s) {
                return s == '2222' ? null : 'Pin is incorrect';
              },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              // onCompleted: (pin) => print(pin),
            ),
          ),
          SizedBox(
            height: 78.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 102.w),
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
          )
        ],
      ),
    );
  }
}
