import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/notifications.dart';
import 'package:flutter_ui/screens/voucher_details.dart';
import 'package:flutter_ui/screens/widgets/constants.dart';
import 'package:flutter_ui/screens/widgets/custom_drawer.dart';
import 'package:flutter_ui/screens/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Voucher extends StatefulWidget {
  @override
  _VoucherState createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var voucher = [
      'used',
      'used',
      'expired',
      'expired',
      'expired',
      'expired',
      'expired',
      'expired',
      'expired',
      'expired'
    ];
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'Voucher',
          fontSize: 20.sp,
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
                  color: mainColor, size: 30),
            ),
          )
        ],
        iconTheme: IconThemeData(color: mainColor),
      ),
      drawer: customDrawer(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 18.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TabBar(
                  controller: _tabController,
                  indicatorColor: mainColor,
                  // indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: 4.h,
                  labelColor: mainColor,
                  isScrollable: true,
                  unselectedLabelColor: mainColor,
                  tabs: [
                    Tab(
                        child: CustomText(
                      text: 'Your Voucher',
                      color: mainColor,
                      fontSize: 13.sp,
                    )),
                    Tab(
                        child: CustomText(
                      text: 'Available Voucher',
                      color: mainColor,
                      fontSize: 13.sp,
                    )),
                    Tab(
                        child: CustomText(
                      text: 'Used Voucher',
                      color: mainColor,
                      fontSize: 13.sp,
                    )),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 800.h,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(VoucherDetails());
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      22,
                                  height: 60.h,
                                  decoration: new BoxDecoration(
                                    gradient: new LinearGradient(
                                        colors: [
                                          Colors.white,
                                          Color(0xFFc8fff4)
                                        ],
                                        stops: [
                                          0.3,
                                          1.0
                                        ],
                                        begin: FractionalOffset.bottomLeft,
                                        end: FractionalOffset.topRight,
                                        tileMode: TileMode.repeated),
                                    // borderRadius: BorderRadius.circular(10.0),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0),
                                    ),
                                  ),
                                  child: Row(children: [
                                    Image.asset('assets/images/image.png'),
                                    SizedBox(width: 10.w),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomText(
                                            text: 'Voucher Name',
                                            fontSize: 14.sp),
                                        SizedBox(height: 6.h),
                                        CustomText(
                                            text: 'Aug 17-23',
                                            color: mainColor,
                                            fontSize: 13.sp),
                                      ],
                                    )
                                  ]),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      22,
                                  height: 60.h,
                                  decoration: new BoxDecoration(
                                    image: DecorationImage(
                                      image: new AssetImage(
                                          'assets/images/use_now.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0.r),
                                  ),
                                  child: Center(
                                      child: CustomText(
                                          text: 'USE NOW',
                                          color: Colors.white,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ]),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24.h),
                  child: ListView.builder(
                    itemCount: 8,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: 18.h,
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 22,
                                height: 60.0.h,
                                decoration: new BoxDecoration(
                                  gradient: new LinearGradient(
                                      colors: [Colors.white, Color(0xFFc8fff4)],
                                      stops: [0.3, 1.0],
                                      begin: FractionalOffset.bottomLeft,
                                      end: FractionalOffset.topRight,
                                      tileMode: TileMode.repeated),
                                  // borderRadius: BorderRadius.circular(10.0),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: Row(children: [
                                  Image.asset('assets/images/image.png'),
                                  SizedBox(width: 10.w),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                          text: 'Voucher Name',
                                          fontSize: 14.sp),
                                      SizedBox(height: 6.h),
                                      CustomText(
                                          text: 'Aug 17-23',
                                          color: mainColor,
                                          fontSize: 13.sp),
                                    ],
                                  )
                                ]),
                              ),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 22,
                                height: 60.0.h,
                                decoration: new BoxDecoration(
                                  image: DecorationImage(
                                    image: new AssetImage(
                                        'assets/images/Subtract.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomText(
                                          text: '15%',
                                          color: Colors.white,
                                          fontSize: 14.sp),
                                      SizedBox(width: 10.w),
                                      CustomText(
                                          text: 'Reward',
                                          color: Colors.white,
                                          fontSize: 13.sp),
                                    ]),
                              ),
                            ]),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24.h),
                  child: ListView.builder(
                    itemCount: voucher.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: 18.h,
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 22,
                                height: 60.h,
                                decoration: new BoxDecoration(
                                  gradient: new LinearGradient(
                                      colors: [Colors.white, Color(0xFFc8fff4)],
                                      stops: [0.3, 1.0],
                                      begin: FractionalOffset.bottomLeft,
                                      end: FractionalOffset.topRight,
                                      tileMode: TileMode.repeated),
                                  // borderRadius: BorderRadius.circular(10.0),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0),
                                  ),
                                ),
                                child: Row(children: [
                                  Image.asset('assets/images/image.png'),
                                  SizedBox(width: 10.w),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                          text: 'Voucher Name',
                                          fontSize: 14.sp),
                                      SizedBox(height: 6.h),
                                      CustomText(
                                          text: 'Aug 17-23',
                                          color: mainColor,
                                          fontSize: 13.sp),
                                    ],
                                  )
                                ]),
                              ),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 22,
                                height: 60.h,
                                decoration: new BoxDecoration(
                                  image: DecorationImage(
                                    image: new AssetImage(
                                        voucher[index] == 'used'
                                            ? 'assets/images/use_now.png'
                                            : 'assets/images/expired.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0.r),
                                ),
                                child: Center(
                                    child: CustomText(
                                        text: voucher[index] == 'used'
                                            ? 'USED'
                                            : 'EXPIRED',
                                        color: Colors.white,
                                        fontSize: 14.sp)),
                              ),
                            ]),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
