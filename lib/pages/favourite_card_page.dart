import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fudy/pages/home_screen.dart';
import 'package:fudy/widgets/favourite_card.dart';

class FavouriteCardPage extends StatefulWidget {
  const FavouriteCardPage({super.key});

  @override
  State<FavouriteCardPage> createState() => _FavouriteCardPageState();
}

class _FavouriteCardPageState extends State<FavouriteCardPage> {
  int buttonSelected = 1;
  int selectedIndex = 0;
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
                  buttonSelected = 1;
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: Icon(
                  Icons.home,
                  size: 24,
                )),
            // backgroundColor: const Color(0xff503E9D),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  buttonSelected = 2;
                },
                child: Icon(
                  FontAwesomeIcons.heart,
                  size: 24,
                )),
            // backgroundColor: const Color(0xff503E9D),
            label: 'like',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {},
              child: const Icon(FontAwesomeIcons.bell, size: 24),
            ),
            // backgroundColor: const Color(0xff503E9D),
            label: 'press',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {},
                child: const Icon(FontAwesomeIcons.cartShopping, size: 24)),
            // backgroundColor: const Color(0xff503E9D),
            label: 'cart',
          ),
        ],
        selectedIconTheme: const IconThemeData(
          color: Color(0xff503E9D),
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
              height: 55.h,
            ),
            Text(
              "Favorites",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff2F2F2F)),
            ),
            SizedBox(
              height: 40.h,
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
              height: 600.h,
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
