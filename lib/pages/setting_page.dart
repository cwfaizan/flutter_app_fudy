import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  int selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon:
                InkWell(onTap: () {}, child: const Icon(Icons.home, size: 24)),
            backgroundColor: const Color(0xff503E9D),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {},
                child: const Icon(FontAwesomeIcons.heart, size: 24)),
            backgroundColor: const Color(0xff503E9D),
            label: 'like',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {},
                child: const Icon(FontAwesomeIcons.bell, size: 24)),
            backgroundColor: const Color(0xff503E9D),
            label: 'press',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {},
                child: const Icon(FontAwesomeIcons.cartShopping, size: 24)),
            backgroundColor: const Color(0xff503E9D),
            label: 'cart',
          ),
        ],

        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        selectedItemColor: const Color(0xff503E9D),
        iconSize: 24,
        onTap: _onItemTapped,
        // elevation: 5,
      ),
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Column(
            children: [
              SizedBox(
                height: 80.h,
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xffBDBDBD),
                    ),
                  ),
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
              SizedBox(
                height: 32.h,
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xffBDBDBD),
                    ),
                  ),
                  leading: const Icon(Icons.card_membership_outlined),
                  title: Text(
                    "Payment Card",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff2F2F2F),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xffBDBDBD),
                    ),
                  ),
                  leading: const Icon(Icons.outgoing_mail),
                  title: Text(
                    "Ongoing Order",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff2F2F2F),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xffBDBDBD),
                    ),
                  ),
                  leading: const Icon(Icons.pages_outlined),
                  title: Text(
                    "Voucher ",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff2F2F2F),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xffBDBDBD),
                    ),
                  ),
                  leading: const Icon(Icons.history_edu),
                  title: Text(
                    "Transaction History",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff2F2F2F),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xffBDBDBD),
                    ),
                  ),
                  leading: const Icon(Icons.settings),
                  title: Text(
                    "Setting",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff2F2F2F),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xffBDBDBD),
                    ),
                  ),
                  leading: const Icon(
                    Icons.logout,
                    color: Color(0xffFF7070),
                  ),
                  title: Text(
                    "Log-out",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffFF7070),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
