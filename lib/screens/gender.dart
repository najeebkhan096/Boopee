import 'package:boopee/screens/birthday.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:flutter/material.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  List<Map> data = [
    {'text': 'Male', 'image': 'images/vector1.png', 'status': false},
    {'text': 'Female', 'image': 'images/Vector2.png', 'status': false},
    {
      'text': 'Prefer not to say',
      'image': 'images/prefer.png',
      'status': false
    },
  ];

  @override
  Widget build(BuildContext context) {
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
                            "What’s your gender?",
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
                        Column(
                          children: List.generate(
                              data.length,
                              (index) => Card(
                                  color: data[index]['status']
                                      ? const Color(0xffeef7f6)
                                      : Colors.white,
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: data[index]['status']
                                              ? mycolor
                                              : Colors.white),
                                      borderRadius: BorderRadius.circular(10)),
                                  elevation: 2,
                                  margin: EdgeInsets.only(
                                      left: width * 0.05,
                                      right: width * 0.05,
                                      bottom: height * 0.015),
                                  child: ListTile(
                                    onTap: () {
                                      setState(() {
                                        for (int i = 0; i < data.length; i++) {
                                          data[i]['status'] = false;
                                        }
                                        data[index]['status'] =
                                            !data[index]['status'];
                                      });
                                    },
                                    minLeadingWidth: width * 0.05,
                                    leading: Image.asset(
                                      data[index]['image'],
                                      height: height * 0.03,
                                      color: Colors.black,
                                    ),
                                    title: Text(data[index]['text']),
                                    trailing: data[index]['status']
                                        ? CircleAvatar(
                                            radius: 10,
                                            backgroundColor: mycolor,
                                            child: const Center(
                                                child: Icon(Icons.done,
                                                    color: Colors.white,
                                                    size: 13)),
                                          )
                                        : const Text(""),
                                  ))),
                        )
                      ],
                    ),
                    BlueButton(
                        text: "Next ->",
                        onpress: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const BirthDayScreen();
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
