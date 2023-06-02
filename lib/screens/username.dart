import 'package:boopee/screens/gender.dart';
import 'package:boopee/states/auth_states/auth_state_provider.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsernameScreen extends ConsumerWidget {
  UsernameScreen({super.key});

  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
                            "What’s your name?",
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
                        SizedBox(height: height * 0.05),
                        BuildTextField(
                          context: context,
                          controller: _firstnameController,
                          label: "First Name",
                          hint: "Marco",
                        ),
                        SizedBox(height: height * 0.015),
                        BuildTextField(
                          context: context,
                          controller: _lastnameController,
                          label: "Last Name",
                          hint: "Verrati",
                        ),
                        SizedBox(height: height * 0.015),
                      ],
                    ),
                    BlueButton(
                        text: "Next ->",
                        onpress: () {
                          ref.watch(authBlocProvider.notifier).updateNames(
                              _firstnameController.text.trim(),
                              _lastnameController.text.trim());
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return GenderScreen();
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
