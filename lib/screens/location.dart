import 'package:boopee/screens/notification.dart';
import 'package:boopee/states/auth_states/auth_state_provider.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocationScreen extends ConsumerWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        width: width * 1,
        height: height * 1,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "images/bg.png",
              height: height * 1,
              fit: BoxFit.cover,
            ),
            Container(
              height: height * 1,
              width: width * 1,
              color: Colors.white.withOpacity(0.6),
            ),
            SizedBox(
              width: width * 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(
                          left: width * 0.05, top: height * 0.05),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: const Color(0xffD7D3D0),
                        child: Container(
                            margin: EdgeInsets.only(left: width * 0.015),
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 20,
                            )),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(
                              left: width * 0.05, right: width * 0.05),
                          child: Image.asset(
                            "images/location2.0.png",
                            height: height * 0.24,
                            width: width * 1,
                            fit: BoxFit.fill,
                          )),
                      SizedBox(
                        height: height * 0.075,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: width * 0.075, right: width * 0.05),
                        child: Text(
                          "Set your location services",
                          style: myStyle.poppin_57534E(
                              height * 0.028, FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: width * 0.075, right: width * 0.05),
                        child: Text(
                          "We use your location to show you dog owners in your area.",
                          style: myStyle.poppin_79716B(
                              height * 0.016, FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      BlueButton(
                          text: "Set location services",
                          onpress: () {
                            ref
                                .watch(authBlocProvider.notifier)
                                .updateLocation(true);
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return NotificationScreen();
                            }));
                          }),
                      SizedBox(
                        height: height * 0.015,
                      ),
                      InkWell(
                        onTap: () {
                          ref
                              .watch(authBlocProvider.notifier)
                              .updateLocation(false);
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return NotificationScreen();
                          }));
                        },
                        child: Center(
                          child: Text(
                            "Not now",
                            style: myStyle.poppin_79716B(
                                height * 0.016, FontWeight.w400),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
