import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/widgets/constants.dart';
import 'package:flutter_ui/screens/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  Set<Marker> _markers = {};
  BitmapDescriptor mapMarker;

  void setCustomMarker() async {
    mapMarker = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(),
      'assets/images/mmm.png',
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(Marker(
          icon: mapMarker,
          markerId: MarkerId('id-1'),
          position: LatLng(31.528955, 34.455524)));
    });
  }

  @override
  void initState() {
    super.initState();
    setCustomMarker();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: mainColor,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: CustomText(
          text: "Address",
          fontSize: 20.sp,
          color: mainColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: Get.width,
            height: 1000, // This line solved the issue
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              markers: _markers,
              zoomControlsEnabled: false,
              initialCameraPosition: CameraPosition(
                target: LatLng(31.528955, 34.455524),
                // zoom: 15,
              ),
            ),
          ),
          Positioned(
            bottom: 25,
            child: Container(
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 104.h,
                    width: 315.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: Colors.white),
                    child: Padding(
                      padding: EdgeInsets.only(top: 16.h, left: 24.w),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: "Store Name",
                                fontSize: 18.sp,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 14.h,
                              ),
                              CustomText(
                                text: "One Bowerman Drive",
                                fontSize: 14.sp,
                                color: mainColor,
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    text: "Beaverton, OR 97005",
                                    fontSize: 14.sp,
                                    color: mainColor,
                                  ),
                                  SizedBox(
                                    width: 120.w,
                                  ),
                                  CustomText(
                                    text: "2,9 km",
                                    fontSize: 14.sp,
                                    color: mainColor,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
