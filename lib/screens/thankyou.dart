import 'package:boopee/states/auth_states/auth_state_provider.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThankyouScreen extends ConsumerWidget {
  const ThankyouScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final authState = ref.watch(authBlocProvider);
    final authProvider = ref.watch(authBlocProvider.notifier);

    return Scaffold(
      body: SizedBox(
        width: width * 1,
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: width * 0.05, top: height * 0.05),
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
            SizedBox(
              height: height * 0.05,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: height * 0.05),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: width * 0.075, right: width * 0.05),
                          child: Text(
                            "Thank you for your subscription",
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
                            "This will help you match with other dogs.",
                            style: myStyle.poppin_79716B(
                                height * 0.016, FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        Center(
                          child: Image.asset(
                            "images/done.png",
                            height: height * 0.07,
                          ),
                        ),
                      ],
                    ),
                    if (authState.showLoding)
                      CircularProgressIndicator(
                        color: Theme.of(context).primaryColor,
                        strokeWidth: 2.5,
                      ),
                    if (!authState.showLoding)
                      BlueButton(
                          text: "Start my journey",
                          onpress: () {
                            authProvider.registerUser(context: context);
                            // Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            //   return MyProfile();
                            // }));
                          }),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
