import 'package:boopee/states/auth_states/auth_state_provider.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PhoneNumberScreen extends ConsumerStatefulWidget {
  const PhoneNumberScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends ConsumerState<PhoneNumberScreen> {
  TextEditingController? _phoneController;

  @override
  void initState() {
    _phoneController = TextEditingController();
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
              height: height * 1,
              width: width * 1,
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
                      "What’s your phone number?",
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
                  // BuildphoneTextField(
                  //     context: context,
                  //     hint: "Enter phone number",
                  //     label: "Phone Number"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      controller: _phoneController,
                      autofocus: true,
                      maxLength: 10,
                      style:
                          myStyle.inter_1C1B1F(height * 0.016, FontWeight.w400),
                      decoration: InputDecoration(
                        hintText: "Enter phone number",
                        isDense: true,
                        counterText: "",
                        alignLabelWithHint: true,
                        hintStyle: myStyle.inter_A9A29D(
                            height * 0.016, FontWeight.w400),
                        labelStyle: myStyle.inter_49454F(
                            height * 0.016, FontWeight.w400),
                        focusedBorder: const OutlineInputBorder(),
                        border: InputBorder.none,
                        labelText: "Phone Number",
                        prefixIcon: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "+322",
                              style: myStyle.inter_1C1B1F(
                                  height * 0.016, FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.05),
                  BlueButton(
                    text: "Confirm Phone number  ->",
                    onpress: () {
                      if (_phoneController!.text.trim().isNotEmpty &&
                          _phoneController!.text.trim().length == 10) {
                        authProvider.signInWithPhoneNumber(
                          context: context,
                          phone: "+91${_phoneController!.text.trim()}",
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content:
                                const Text("Please enter a valid phone number"),
                            backgroundColor: Colors.red[400],
                          ),
                        );
                      }
                    },
                  ),
                  SizedBox(
                    height: height * 0.015,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: width * 0.075, right: width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: height * 0.01),
                            child: Image.asset("images/locked.png",
                                height: height * 0.02)),
                        SizedBox(
                          width: width * 0.015,
                        ),
                        Expanded(
                          child: Text(
                            "We protect our community by making sure everyone on Boopee is real.",
                            style: myStyle.poppin_79716B(
                                height * 0.014, FontWeight.w400),
                          ),
                        ),
                      ],
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
