import 'package:boopee/screens/PhoneConfirmatiob.dart';
import 'package:boopee/states/auth_states/auth_state.dart';
import 'package:boopee/states/auth_states/auth_state_provider.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConfirmEmailScreen extends ConsumerWidget {
  const ConfirmEmailScreen({super.key});

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
            SizedBox(
              height: height * 0.06,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                margin: EdgeInsets.only(left: width * 0.05),
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
              height: height * 0.015,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.075, right: width * 0.05),
              child: Text(
                "Confirm your email address",
                style: myStyle.poppin_57534E(height * 0.028, FontWeight.w600),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.075, right: width * 0.05),
              child: Text(
                "Enter the code we’ve sent to “your@email.com”.  Wrong number?",
                style: myStyle.poppin_79716B(height * 0.016, FontWeight.w400),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            BuildTextField(
                context: context,
                hint: "4-digit passcode",
                label: "Insert code"),
            SizedBox(
              height: height * 0.05,
            ),
            BlueButton(
                text: "Confirm email address ->",
                onpress: () {
                  Future.value([
                    authProvider.getPetTags(),
                    authProvider.getPetBreeds()
                  ]).then((values) async {
                    if (await values[0] && await values[1]) {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const PhoneConfirmation();
                      }));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Something went wrong"),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  });
                }),
            SizedBox(
              height: height * 0.05,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.075, right: width * 0.05),
              child: Text(
                "Your message should arrive within 30s.",
                style: myStyle.poppin_79716B(height * 0.014, FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
