// import 'dart:convert';
// import 'package:http/http.dart';
// import 'package:http/http.dart' as http;
// import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fudy/network/network_client.dart';
import 'package:fudy/pages/otp_page.dart';
import 'package:fudy/utils/util.dart';


class CheckAccountPage extends StatefulWidget {
  const CheckAccountPage({super.key});

  @override
  State<CheckAccountPage> createState() => _CheckAccountPageState();
}

@override
// void initState() {
//   if (widget.author != null) {
//     nameController.text = widget.author!.name;
//   }
//   super.initState();
// }
class _CheckAccountPageState extends State<CheckAccountPage> {
  final contactNoController = TextEditingController();
  final nc = NetworkClient();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
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
                    top: 60.h,
                    left: 15.w,
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
                          "Welcome To Fudy !",
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
              // Center(child: Image.asset("assets/images/forgot.png")),
              SizedBox(
                height: 100.h,
              ),
              TextFormField(
                  decoration:
                      const InputDecoration(hintText: "Enter phone number"),
                  keyboardType: TextInputType.number,
                  controller: contactNoController),
              // SizedBox(
              //   height: 90.h,
              //   width: double.maxFinite,
              //   child: IntlPhoneField(
              //     flagsButtonPadding: const EdgeInsets.all(8),
              //     dropdownIconPosition: IconPosition.trailing,
              //     decoration: InputDecoration(
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
              //       filled: true,
              //       fillColor: const Color(0xffffffff),
              //       labelText: '|',
              //       labelStyle: TextStyle(
              //         fontSize: 14.sp,
              //         fontWeight: FontWeight.w500,
              //         color: const Color(0xffBDBDBD),
              //       ),
              //     ),
              //     controller: phoneController,
              //     initialCountryCode: 'PAK',
              //     onChanged: (phone) {
              //       // print(phone.completeNumber);
              //     },
              //   ),
              // ),
              SizedBox(
                height: 100.h,
              ),
              SizedBox(
                  width: double.maxFinite,
                  child: FilledButton(
                      onPressed: () {
                        submitForm(context);
                      },
                      child: const Text("Next")))
            ],
          ),
        ),
      ),
    );
  }

  Future<void> submitForm(BuildContext context) async {
    try {
      final param = {
        'contact_no': contactNoController.text.trim(),
        'account_type': 2
      };
      final res = await nc.post('api/check-account', queryParameters: param);
      if (res.statusCode == 200) {
        Map<String, dynamic> mp = json.decode(res.toString());
        // ignore: use_build_context_synchronously
        Utility.showMessage(context, mp['message']);
        Map<String, dynamic> data = mp['data'];

        // ignore: use_build_context_synchronously
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) => OtpVerification(
                    jsonData: data,
                  )),
        );
      }
    } catch (e) {
      log(e.toString());
    }
  }
  // void checkAccount() async {
  //   String url = "http://192.168.0.102:8000/api/check-account";
  //   var data = {
  //     "contact_no": phoneController.text,
  //     "account_type": 2,
  //   };
  //   var dataa = jsonEncode(data);
  //   var urlParse = Uri.parse(url);
  //   Response response = await http
  //       .post(urlParse, body: dataa, headers: {"Content type": "application/json"});
  //   var info = jsonDecode(response.body);
  //   print(info);
  // }
}
