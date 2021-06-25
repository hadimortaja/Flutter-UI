import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/notifications.dart';
import 'package:flutter_ui/screens/widgets/constants.dart';
import 'package:flutter_ui/screens/widgets/customDropdown.dart';
import 'package:flutter_ui/screens/widgets/custom_drawer.dart';
import 'package:flutter_ui/screens/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  String _chosenValue;

  var transactions = [
    {"title": "Earned", "image": "assets/images/export.png"},
    {"title": "Redeem", "image": "assets/images/money-insert.png"},
    {"title": "Adjust", "image": "assets/images/Vector.png"},
    {"title": "Earned", "image": "assets/images/export.png"},
    {"title": "Redeem", "image": "assets/images/money-insert.png"},
    {"title": "Adjust", "image": "assets/images/Vector.png"},
    {"title": "Earned", "image": "assets/images/export.png"},
    {"title": "Redeem", "image": "assets/images/money-insert.png"},
    {"title": "Adjust", "image": "assets/images/Vector.png"},
    {"title": "Earned", "image": "assets/images/export.png"},
    {"title": "Redeem", "image": "assets/images/money-insert.png"},
    {"title": "Adjust", "image": "assets/images/Vector.png"},
    {"title": "Earned", "image": "assets/images/export.png"},
    {"title": "Redeem", "image": "assets/images/money-insert.png"},
    {"title": "Adjust", "image": "assets/images/Vector.png"},
    {"title": "Earned", "image": "assets/images/export.png"},
    {"title": "Redeem", "image": "assets/images/money-insert.png"},
    {"title": "Adjust", "image": "assets/images/Vector.png"},
    {"title": "Earned", "image": "assets/images/export.png"},
    {"title": "Redeem", "image": "assets/images/money-insert.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Transactions',
          fontSize: 20.0.h,
          color: mainColor,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () => Get.to(Notifications()),
            child: Padding(
              padding: EdgeInsets.only(right: 14.w),
              child: Icon(Icons.notifications_outlined,
                  color: mainColor, size: 30.h),
            ),
          )
        ],
        iconTheme: IconThemeData(color: mainColor),
      ),
      drawer: customDrawer(),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 22.h),
        child: ListView(
          children: [
            CustomDropdown<int>(
              child: CustomText(text: 'Transaction Type', color: textColor),
              onChange: (int value, int index) => print(value),
              icon: Icon(FontAwesomeIcons.caretDown, color: textColor),
              dropdownButtonStyle: DropdownButtonStyle(
                  width: 170,
                  height: 40,
                  elevation: 1,
                  backgroundColor: Colors.white,
                  primaryColor: Colors.black87,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween),
              dropdownStyle: DropdownStyle(
                borderRadius: BorderRadius.circular(8),
                elevation: 6,
                padding: EdgeInsets.all(5),
              ),
              items: [
                'Earned',
                'Redeem',
                'Adjust',
              ]
                  .asMap()
                  .entries
                  .map(
                    (item) => DropdownItem<int>(
                      value: item.key + 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(item.value),
                      ),
                    ),
                  )
                  .toList(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: CustomDropdown<int>(
                child: CustomText(text: 'Transaction Month', color: textColor),
                onChange: (int value, int index) => print(value),
                icon: Icon(FontAwesomeIcons.caretDown, color: textColor),
                dropdownButtonStyle: DropdownButtonStyle(
                    width: 170.w,
                    height: 40.h,
                    elevation: 1,
                    backgroundColor: Colors.white,
                    primaryColor: Colors.black87,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween),
                dropdownStyle: DropdownStyle(
                  borderRadius: BorderRadius.circular(8),
                  elevation: 6,
                  padding: EdgeInsets.all(5),
                ),
                items: [
                  'January',
                  'February',
                  'March',
                ]
                    .asMap()
                    .entries
                    .map(
                      (item) => DropdownItem<int>(
                        value: item.key + 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(item.value),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 18.h),
              child: Column(
                children: [
                  Container(
                    height: Get.height,
                    width: double.infinity,
                    child: RawScrollbar(
                      isAlwaysShown: true,
                      thumbColor: mainColor,
                      child: ListView.builder(
                        itemCount: transactions.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(top: 14.h),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(children: [
                                      Container(
                                        height: 40.h,
                                        width: 40.w,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.2),
                                                spreadRadius: 5,
                                                blurRadius: 7,
                                                offset: Offset(0,
                                                    3), // changes position of shadow
                                              ),
                                            ]),
                                        child: Center(
                                          child: Image.asset(
                                              transactions[index]['image']),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 18.w),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomText(
                                                  text: transactions[index]
                                                      ['title'],
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16.sp),
                                              SizedBox(
                                                height: 8.h,
                                              ),
                                              CustomText(
                                                  text: '15 Aug 2020',
                                                  fontSize: 16.sp)
                                            ]),
                                      ),
                                    ]),
                                    Row(
                                      children: [
                                        CustomText(
                                            text: '+ ',
                                            fontWeight: FontWeight.bold),
                                        CustomText(
                                            text: '\$50.00',
                                            fontWeight: FontWeight.bold),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.h),
                                  child:
                                      Divider(thickness: 1.2, color: mainColor),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
