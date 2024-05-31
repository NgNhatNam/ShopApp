
import 'package:cuoi_ki_flutter/pages/cart/cart_page.dart';
import 'package:cuoi_ki_flutter/pages/favorite/favorite_page.dart';
import 'package:cuoi_ki_flutter/pages/home/home_page.dart';
import 'package:cuoi_ki_flutter/pages/profile/profile_page.dart';
import 'package:cuoi_ki_flutter/pages/search/search_page.dart';
import 'package:cuoi_ki_flutter/resources/app_color.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int cuttentIndex = 2;
    List screens = const [
    SearchPage(),
    Favorite(),
    HomePage(),
    CartPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cuttentIndex = 2;
          
          });
        },
        shape: const CircleBorder(),
        backgroundColor: AppColor.kprimaryColor,
        child: const Icon(
          Icons.home,
          color: AppColor.white,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: AppColor.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 0;
                });
              },
              icon: Icon(
                Icons.search,
                size: 30,
                color: cuttentIndex == 0 ? AppColor.kprimaryColor : AppColor.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 1;
                });
              },
              icon: Icon(
                Icons.favorite_border,
                size: 30,
                color: cuttentIndex == 1 ? AppColor.kprimaryColor : AppColor.grey,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 3;
                });
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
                color: cuttentIndex == 3 ? AppColor.kprimaryColor : AppColor.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 4;
                });
              },
              icon: Icon(
                Icons.person,
                size: 30,
                color: cuttentIndex == 4 ? AppColor.kprimaryColor : AppColor.grey,
              ),
            ),
          ],
        ),
      ),
      body: screens[cuttentIndex],
    );
  }
}