import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/screens/events.dart';
import 'package:flutter_ui/screens/membership.dart';
import 'package:flutter_ui/screens/store.dart';
import 'package:flutter_ui/screens/transactions.dart';
import 'package:flutter_ui/screens/voucher.dart';
import 'package:flutter_ui/screens/widgets/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/custom_text.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectIndex = 0;
  List<Widget> widgetList = <Widget>[
    Membership(),
    Voucher(),
    Store(),
    Transactions(),
    Events(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList.elementAt(_selectIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10.sp,
        unselectedFontSize: 10.sp,
        selectedItemColor: mainColor,
        unselectedItemColor: mainColor,
        items: [
          BottomNavigationBarItem(
            activeIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/membership.svg',
                  height: 15.h,
                  width: 15.w,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  text: 'Membership',
                  fontSize: 12.sp,
                  color: mainColor,
                ),
              ],
            ),
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/membership1.svg',
                  height: 15.h,
                  width: 15.w,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  text: 'Membership',
                  fontSize: 12.sp,
                  color: mainColor,
                ),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/voucher1.svg',
                  height: 18.h,
                  width: 18.w,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  text: 'Voucher',
                  fontSize: 12.sp,
                  color: mainColor,
                ),
              ],
            ),
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/voucher.svg',
                  height: 18.h,
                  width: 18.w,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  text: 'Voucher',
                  fontSize: 12.sp,
                  color: mainColor,
                ),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/store.svg',
                  height: 18.h,
                  width: 18.w,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  text: 'Store',
                  fontSize: 12.sp,
                  color: mainColor,
                ),
              ],
            ),
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/store.svg',
                  height: 18.h,
                  width: 18.w,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  text: 'Store',
                  fontSize: 12.sp,
                  color: mainColor,
                ),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/transaction1.svg',
                  height: 18.h,
                  width: 18.w,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  text: 'Transaction',
                  fontSize: 12.sp,
                  color: mainColor,
                ),
              ],
            ),
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/transaction.svg',
                  height: 18.h,
                  width: 18.w,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  text: 'Transaction',
                  fontSize: 12.sp,
                  color: mainColor,
                ),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/event1.svg',
                  height: 18.h,
                  width: 18.w,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  text: 'Events',
                  fontSize: 12.sp,
                  color: mainColor,
                ),
              ],
            ),
            icon: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/event.svg',
                  height: 18.h,
                  width: 18.w,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(
                  text: 'Events',
                  fontSize: 12.sp,
                  color: mainColor,
                ),
              ],
            ),
            label: "",
          ),
        ],
        backgroundColor: Colors.white,
        currentIndex: _selectIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
