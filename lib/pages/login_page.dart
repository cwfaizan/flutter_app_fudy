import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fudy/pages/forgot_passward.dart';
import 'package:fudy/pages/home_screen.dart';
import 'package:fudy/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                width: double.maxFinite,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Insert your email here',
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
                width: double.maxFinite,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Type your password',
                  ),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const ForgotPassward()),
                  );
                },
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffEB5757)),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              SizedBox(
                width: double.maxFinite,
                child: FilledButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffFDFDFD),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80.h,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/svgs/google.svg"),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/svgs/facebook.svg"),
                  ),
                ],
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff2F2F2F)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                      );
                    },
                    child: Text(
                      "Register",
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
