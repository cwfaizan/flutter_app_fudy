import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fudy/models/api_auth.dart';
import 'package:fudy/network/network_client.dart';
import 'package:fudy/pages/forgot_passward.dart';
import 'package:fudy/pages/home_screen.dart';
import 'package:fudy/pages/recipe_home_page.dart';
import 'package:fudy/pages/registeration_page.dart';
import 'package:fudy/utils/util.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final contactNoController = TextEditingController();
  final passwordController = TextEditingController();
  final nc = NetworkClient();

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
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 40.h,
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
                "Phone Number",
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
                  controller: contactNoController..text = "923456789002",
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: 'Type phone no here',
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
                  controller: passwordController..text = "12345678",
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    hintText: 'Type your password',
                  ),
                ),
              ),
              SizedBox(
                height: 60.h,
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
                height: 20.h,
              ),
              SizedBox(
                width: double.maxFinite,
                child: FilledButton(
                  onPressed: () {
                    submitForm(context);
                  },
                  child: const Text(
                    "Login",
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
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
                          builder: (context) => const RegistrationPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff503E9D),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> submitForm(BuildContext context) async {
    try {
      final param = {
        'contact_no': int.parse(contactNoController.text.trim()),
        'password': passwordController.text,
        'account_type': 2
      };
      final res = await nc.post('api/login', queryParameters: param);
      if (res.statusCode == 200) {
        Map<String, dynamic> mp = json.decode(res.toString());
        // ignore: use_build_context_synchronously
        Utility.showMessage(context, mp['message']);
        Map<String, dynamic> data = mp['data'];
        ApiAuth.userId = (data['user_id'] as List)[0];
        ApiAuth.name = (data['name'] as List)[0];
        ApiAuth.tokenType = (data['token_type'] as List)[0];
        ApiAuth.token = (data['token'] as List)[0];
        ApiAuth.tokenExpiresAt =
            DateTime.parse((data['token_expires_at'] as List)[0]);
        ApiAuth.roleList = (data['roles'] as List);
        if (ApiAuth.roleList!.contains('admin')) {
          // ignore: use_build_context_synchronously
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const RecipeHomePage()),
          );
        } else {
          // ignore: use_build_context_synchronously
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
