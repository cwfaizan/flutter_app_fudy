import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fudy/pages/home_screen.dart';
import 'package:fudy/widgets/favourite_card.dart';

import '../widgets/transcation_history_content.dart';

class FavouriteCardPage extends StatefulWidget {
  const FavouriteCardPage({super.key});

  @override
  State<FavouriteCardPage> createState() => _FavouriteCardPageState();
}

class _FavouriteCardPageState extends State<FavouriteCardPage> {
  // int buttonSelected = 1;
  int selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: const Icon(
                  Icons.home,
                  size: 24,
                )),
            // backgroundColor: const Color(0xff503E9D),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {},
                child: const Icon(
                  FontAwesomeIcons.heart,
                  size: 24,
                )),
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
                                            const TransactionHistory()),
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
          //     onTap: () {},
          //     child: const Icon(FontAwesomeIcons.bell, size: 24),
          //   ),
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.sp),
        child: Column(
          children: [
            SizedBox(
              height: 60.h,
            ),
            Text(
              "Favorites",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff2F2F2F)),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: double.maxFinite,
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xffBDBDBD),
                  ),
                  hintText: 'Search',
                ),
              ),
            ),
            SizedBox(
              height: 540.h,
              child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.w,
                  mainAxisSpacing: 32.h,
                  childAspectRatio: 20.w / 32.h,
                  children: List.generate(6, (index) {
                    return SizedBox(
                      height: 257.h,
                      width: 177.w,
                      child: const FavouriteCard(
                          imageUrl: "https://via.placeholder.com/152x190",
                          title: 'Salad with Bread',
                          price: 8.2,
                          isFavourite: true),
                    );
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
