import 'package:boopee/states/auth_states/auth_state_provider.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VerifyScreen extends ConsumerStatefulWidget {
  const VerifyScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends ConsumerState<VerifyScreen> {
  TextEditingController? _codeController;

  @override
  void initState() {
    _codeController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final authProvider = ref.watch(authBlocProvider.notifier);

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
              width: width * 1,
              height: height * 1,
              color: Colors.white.withOpacity(0.6),
            ),
            SizedBox(
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
                    margin: EdgeInsets.only(
                        left: width * 0.075, right: width * 0.05),
                    child: Text(
                      "Verify  your phone number",
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
                      "Enter the code we’ve sent by text to +52-393459-65. Wrong number?",
                      style: myStyle.poppin_79716B(
                          height * 0.016, FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      controller: _codeController,
                      autofocus: true,
                      style:
                          myStyle.inter_1C1B1F(height * 0.016, FontWeight.w400),
                      maxLength: 6,
                      decoration: InputDecoration(
                        hintText: "6-digit passcode",
                        isDense: true,
                        counterText: "",
                        alignLabelWithHint: true,
                        hintStyle: myStyle.inter_A9A29D(
                            height * 0.016, FontWeight.w400),
                        labelStyle: myStyle.inter_49454F(
                            height * 0.016, FontWeight.w400),
                        focusedBorder: const OutlineInputBorder(),
                        border: InputBorder.none,
                        labelText: "Insert code",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  BlueButton(
                      text: "Confirm Phone number ->",
                      onpress: () {
                        authProvider.signInWithOTP(
                            context: context,
                            smsCode: _codeController!.text.trim());
                        // Navigator.of(context)
                        //     .push(MaterialPageRoute(builder: (context) {
                        //   return CGUScreen();
                        // }));
                      }),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: width * 0.075, right: width * 0.05),
                    child: Text(
                      "Your message should arrive within 30s.",
                      style: myStyle.poppin_79716B(
                          height * 0.014, FontWeight.w400),
                    ),
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
