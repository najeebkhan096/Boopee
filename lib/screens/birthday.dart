import 'package:boopee/screens/recoveryEmail.dart';
import 'package:boopee/states/auth_states/auth_state.dart';
import 'package:boopee/states/auth_states/auth_state_provider.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BirthDayScreen extends ConsumerWidget {
  const BirthDayScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final AuthState authState = ref.watch(authBlocProvider);
    final AuthStateProvider authProvider = ref.watch(authBlocProvider.notifier);

    return Scaffold(
      body: SizedBox(
        width: width * 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                margin: EdgeInsets.only(bottom: height * 0.025),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: width * 0.075, right: width * 0.05),
                          child: Text(
                            "What’s you Birthday?",
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
                            "We protect our community by making sure everyone on Boopee is real.",
                            style: myStyle.poppin_79716B(
                                height * 0.016, FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
                        // BuildTextField(
                        //     context: context,
                        //     label: "Birthday",
                        //     hint: "Feb 09, 2023",
                        //     date: true),
                        GestureDetector(
                          onTap: () {
                            showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime(2100))
                                .then((value) {
                              if (value != null) {
                                authProvider.updateDOB(
                                    "${value.day.toString().padLeft(2, "0")}/${value.month.toString().padLeft(2, "0")}/${value.year}");
                              }
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                left: width * 0.075, right: width * 0.05),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            height: 52.0,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  authState.registerRequestModel!.dob.isEmpty
                                      ? "Select date for birth"
                                      : authState.registerRequestModel!.dob,
                                  style: myStyle.poppin_57534E(
                                      16.0, FontWeight.w100),
                                ),
                                Image.asset(
                                  "images/calender.png",
                                  height: height * 0.025,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.015,
                        ),
                      ],
                    ),
                    BlueButton(
                        text: "Next ->",
                        onpress: () {
                          if (authState.registerRequestModel!.dob.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: const Text(
                                    "Please select the date of birth!"),
                                duration: const Duration(milliseconds: 800),
                                backgroundColor: Colors.red[400]));
                            return;
                          }
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return RecoveryEmailScreen();
                          }));
                        })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
