import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                      top: 21.h,
                      right: 184.w,
                    ),
                    child: Image.asset("assets/images/l.png"),
                  ),
                  Positioned(
                    top: 56.h,
                    left: 20.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello,",
                          style: TextStyle(
                            fontSize: 40.sp,
                            fontWeight: FontWeight.w800,
                            color: const Color(0xff2F2F2F),
                          ),
                        ),
                        Text(
                          "Welcome Back !",
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
                "Email",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff2F2F2F)),
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                height: 72.h,
                width: double.maxFinite,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Insert your email here',
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffBDBDBD),
                    ),
                    filled: true,
                    fillColor: const Color(0xffffffff),
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
                  ),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Text(
                "Password",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff2F2F2F)),
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                height: 72.h,
                width: double.maxFinite,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Type your password',
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffBDBDBD),
                    ),
                    filled: true,
                    fillColor: const Color(0xffffffff),
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
                  ),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
                Text(
                "Phone Number",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff2F2F2F)),
              ),
                 SizedBox(
                height: 72.h,
                width: double.maxFinite,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Type your password',
                    hintStyle: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffBDBDBD),
                    ),
                    // prefix: ,
                    filled: true,
                    fillColor: const Color(0xffffffff),
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
                  ),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              SizedBox(
                height: 72.h,
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff503E9D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffFDFDFD),
                    ),
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
                    onPressed: () {},
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
