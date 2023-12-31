import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fudy/pages/login_page.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SvgPicture.asset("assets/svgs/login.svg"),
              // Image.asset("assets/images/login.png"),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 30.h,
                      right: 184.w,
                    ),
                    child: Image.asset("assets/images/l.png"),
                  ),
                  Positioned(
                    top: 65.h,
                    left: 20.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Join now ",
                              style: TextStyle(
                                fontSize: 40.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff2F2F2F),
                              ),
                            ),
                            Text(
                              "with ",
                              style: TextStyle(
                                fontSize: 35.sp,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff2F2F2F),
                              ),
                            )
                          ],
                        ),
                        Text(
                          " us!",
                          style: TextStyle(
                            fontSize: 35.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff2F2F2F),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              // SizedBox(
              //   height: 21.h,
              // ),
              Text(
                "Name",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff2F2F2F)),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 72.h,
                width: double.maxFinite,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Insert your Name here',
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Password",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff2F2F2F)),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: double.maxFinite,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Type your password',
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Phone Number",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff2F2F2F)),
              ),
              // SizedBox(
              //   height: 72.h,
              //   width: double.maxFinite,
              //   child: TextFormField(
              //     decoration: InputDecoration(
              //       hintText: 'Type your password',
              //       hintStyle: TextStyle(
              //         fontSize: 14.sp,
              //         fontWeight: FontWeight.w500,
              //         color: const Color(0xffBDBDBD),
              //       ),
              //       // prefix: ,
              //       filled: true,
              //       fillColor: const Color(0xffffffff),
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(0.r),
              //         borderSide: const BorderSide(
              //           width: 1,
              //           color: Color(0xffE8E8E8),
              //         ),
              //       ),
              //       enabledBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(12.r),
              //         borderSide: const BorderSide(
              //           width: 1,
              //           color: Color(0xffE8E8E8),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 90.h,
                width: double.maxFinite,
                child: IntlPhoneField(
                  flagsButtonPadding: const EdgeInsets.all(8),
                  dropdownIconPosition: IconPosition.trailing,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.r),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color(0xffE8E8E8),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: const BorderSide(
                        width: 1,
                        color: Color(0xffE8E8E8),
                      ),
                    ),
                    filled: true,
                    fillColor: const Color(0xffffffff),
                    labelText: '|',
                    labelStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffBDBDBD),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    // print(phone.completeNumber);
                  },
                ),
              ),

              SizedBox(
                height: 35.h,
              ),
              SizedBox(
                width: double.maxFinite,
                child: FilledButton(
                  onPressed: () {},
                  child: const Text(
                    "Register",
                  ),
                ),
              ),

              SizedBox(
                height: 32.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Have an account?",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff2F2F2F)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff503E9D)),
                    ),
                  )
                ],
              ),
              // SvgPicture.asset("assets/svgs/login.svg"),
            ],
          ),
        ),
      ),
    );
  }
}
