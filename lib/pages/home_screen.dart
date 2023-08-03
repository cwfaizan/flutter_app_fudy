import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fudy/pages/favourite_card_page.dart';
import 'package:fudy/widgets/home_page_content.dart';

import '../widgets/home_card.dart';
import '../widgets/transcation_history_content.dart';
import 'transaction_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
            // backgroundColor: const Color(0xff503E9D),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const FavouriteCardPage()),
                  );
                },
                child: const Icon(FontAwesomeIcons.heart, size: 24)),
            // backgroundColor: const Color(0xff503E9D),
            label: 'like',
          ),
          BottomNavigationBarItem(
              icon: PopupMenuButton(
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: ListTile(
                            leading: const Icon(Icons.person),
                            title: InkWell(
                                onTap: () {},
                                child: const Text("User Profile")),
                          ),
                        ),
                        PopupMenuItem(
                          child: ListTile(
                            leading: const Icon(Icons.card_membership),
                            title: InkWell(
                                onTap: () {},
                                child: const Text("Payment Card")),
                          ),
                        ),
                        PopupMenuItem(
                          child: ListTile(
                            leading: const Icon(Icons.outgoing_mail),
                            title: InkWell(
                                onTap: () {},
                                child: const Text("Ongoing Order")),
                          ),
                        ),
                        PopupMenuItem(
                          child: ListTile(
                            leading: const Icon(Icons.pages),
                            title: InkWell(
                                onTap: () {}, child: const Text("Voucher")),
                          ),
                        ),
                             PopupMenuItem(
                          child: ListTile(
                            leading: const Icon(Icons.history),
                            title: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TransactionPage()),
                                  );
                                },
                                child: const Text("Transaction History")),
                          ),
                        ),
                        PopupMenuItem(
                          child: ListTile(
                            leading: const Icon(Icons.logout),
                            title: InkWell(
                                onTap: () {}, child: const Text("Log out")),
                          ),
                        )
                      ]),
              label: "Menu bar"),
          // BottomNavigationBarItem(
          //   icon: InkWell(
          //       onTap: () {},
          //       child: const Icon(FontAwesomeIcons.bell, size: 24)),
          //   // backgroundColor: const Color(0xff503E9D),
          //   label: 'press',
          // ),
          // BottomNavigationBarItem(
          //   icon: InkWell(
          //       onTap: () {},
          //       child: const Icon(FontAwesomeIcons.cartShopping, size: 24)),
          //   // backgroundColor: const Color(0xff503E9D),
          //   label: 'cart',
          // ),
        ],
        selectedIconTheme: const IconThemeData(
          color: Color(0xff000000),
        ),
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        // selectedItemColor: const Color(0xff503E9D),
        iconSize: 24,
        onTap: _onItemTapped,
        // elevation: 5,
      ),
      backgroundColor: const Color(0xffffffff),
      body: ScrollConfiguration(
        behavior: const ScrollBehavior(),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 54.h,
                ),
                Text(
                  "Hello, Jhone",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff2F2F2F),
                  ),
                ),
                Text(
                  "Want to order food today?",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffBDBDBD),
                  ),
                ),
                SizedBox(
                  height: 27.h,
                ),
                SizedBox(
                  height: 60.h,
                  width: double.maxFinite,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color(0xffBDBDBD),
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
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
                        borderRadius: BorderRadius.circular(16.r),
                        borderSide: const BorderSide(
                          width: 1,
                          color: Color(0xffE8E8E8),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Best seller of the week",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff2F2F2F)),
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "See All",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff503E9D)),
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 225.h,
                  width: double.maxFinite,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Container(
                        color: const Color(0xffffffff),
                        height: 220.h,
                        width: 123.w,
                        child: const HomeCard(
                          imageUrl: "https://via.placeholder.com/152x190",
                          title: 'Salad with Bread',
                          price: 82,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Stack(
                  children: [
                    Image.asset("assets/images/c.png"),
                    Image.asset("assets/images/ca.png"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 32.w, top: 22.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "50% off all food\n Products.",
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff2F2F2F)),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                "4 - 4 August 2023",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        const Color.fromARGB(136, 47, 47, 47)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 26.w, top: 35.h),
                          child: SizedBox(
                            height: 56.h,
                            width: 125.w,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffFFFFFF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                              ),
                              child: Text(
                                "Order Now",
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff2F2F2F),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 28.h,
                ),
                Text(
                  "Recommended for you",
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff2F2F2F)),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 82.h,
                  width: double.maxFinite,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(bottom: 5.w),
                      child: Container(
                          color: const Color(0xffffffff),
                          height: 82.h,
                          width: double.maxFinite,
                          child: const HomePageContent()),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
