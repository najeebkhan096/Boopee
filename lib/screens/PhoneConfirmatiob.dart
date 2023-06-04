import 'package:boopee/screens/thankyou.dart';
import 'package:boopee/states/auth_states/auth_state_provider.dart';
import 'package:boopee/widgets/button.dart';
import 'package:boopee/widgets/constants.dart';
import 'package:boopee/widgets/dropdown.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PhoneConfirmation extends ConsumerStatefulWidget {
  const PhoneConfirmation({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PhoneConfirmationState();
}

class _PhoneConfirmationState extends ConsumerState<PhoneConfirmation> {
  bool _isChecked = false;
  bool _isChecked2 = false;
  int currentindex = 0;

  String? choice;
  List<Map> data = [
    {'text': 'Male', 'image': 'images/vector1.png', 'status': false},
    {'text': 'Female', 'image': 'images/Vector2.png', 'status': false},
  ];
  List<Map> data2 = [
    {'text': 'Mixed', 'image': 'images/vector1.png', 'status': false},
    {
      'text': 'Race (Selected race)',
      'image': 'images/Vector2.png',
      'status': false
    },
  ];

  List<Map<String, dynamic>> characterList = [
    "Playfull",
    "Happy X Playfull Playfull",
    "Playstation 5",
    "Description 12",
    "Stupid",
    "Good Dog If you made here, hi!",
    "Another desc?",
    "What should I put here",
    "I don't know X",
    "Another desc?",
    "Playfull",
    "Playfull Happy Playfull",
    "XPlayfull",
    "Playstation 5",
    "Description 12",
    "Stupid",
    "Good Dog If you made here, hi!",
    "Another desc?",
    "What should I put here",
    "I don't know X",
    "Another desc?",
    "Playfull"
  ].map((character) => {"text": character, "status": false}).toList();

  List<String> searchedgogs = [
    'Akita',
    'Australian Shepherd',
    'Basset Hound',
    'Beagle',
    'Bernese Mountain Dog',
    'Bichon Frise',
    'Border Collie',
    'Boston Terrier',
    'Boxer',
    'Bulldog',
    'Cavalier King Charles Spaniel',
    'Chihuahua',
    'Cocker Spaniel',
    'Dachshund',
    'Doberman Pinscher',
    'English Springer Spaniel',
    'French Bulldog',
    'German Shepherd',
    'Golden Retriever',
    'Great Dane',
    'Greyhound',
    'Husky',
    'Irish Setter',
    'Jack Russell Terrier',
    'Labrador Retriever',
    'Lhasa Apso',
    'Maltese',
    'Miniature Pinscher',
    'Miniature Schnauzer',
    'Newfoundland',
    'Old English Sheepdog',
    'Papillon',
    'Pekingese',
    'Pit Bull',
    'Pointer',
    'Pomeranian',
    'Poodle',
    'Pug',
    'Rottweiler',
    'Saint Bernard',
    'Shar Pei',
    'Shetland Sheepdog',
    'Shih Tzu',
    'Siberian Husky',
    'Staffordshire Bull Terrier',
    'Standard Schnauzer',
    'Toy Poodle',
    'Weimaraner',
    'West Highland White Terrier',
    'Yorkshire Terrier'
  ];

  List<String> dogBreeds = [
    'Akita',
    'Australian Shepherd',
    'Basset Hound',
    'Beagle',
    'Bernese Mountain Dog',
    'Bichon Frise',
    'Border Collie',
    'Boston Terrier',
    'Boxer',
    'Bulldog',
    'Cavalier King Charles Spaniel',
    'Chihuahua',
    'Cocker Spaniel',
    'Dachshund',
    'Doberman Pinscher',
    'English Springer Spaniel',
    'French Bulldog',
    'German Shepherd',
    'Golden Retriever',
    'Great Dane',
    'Greyhound',
    'Husky',
    'Irish Setter',
    'Jack Russell Terrier',
    'Labrador Retriever',
    'Lhasa Apso',
    'Maltese',
    'Miniature Pinscher',
    'Miniature Schnauzer',
    'Newfoundland',
    'Old English Sheepdog',
    'Papillon',
    'Pekingese',
    'Pit Bull',
    'Pointer',
    'Pomeranian',
    'Poodle',
    'Pug',
    'Rottweiler',
    'Saint Bernard',
    'Shar Pei',
    'Shetland Sheepdog',
    'Shih Tzu',
    'Siberian Husky',
    'Staffordshire Bull Terrier',
    'Standard Schnauzer',
    'Toy Poodle',
    'Weimaraner',
    'West Highland White Terrier',
    'Yorkshire Terrier'
  ];

  TextEditingController search = TextEditingController();

  void _mothershowBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      enableDrag: true,
      builder: (BuildContext context) {
        final height = MediaQuery.of(context).size.height;
        final width = MediaQuery.of(context).size.width;
        return StatefulBuilder(builder: (ctx, mystate) {
          return Container(
            height: height * 1,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.025,
                ),
                Text(
                  'What’s your dog’s mother race?',
                  style: myStyle.poppin_57534E(height * 0.02, FontWeight.w400),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xffA0A0AB).withOpacity(0.2)),
                  margin:
                      EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                  padding: EdgeInsets.only(right: width * 0.05),
                  child: TextField(
                    controller: search,
                    onChanged: (val) {
                      if (val.isEmpty) {
                        searchedgogs = dogBreeds;
                        mystate(() {});
                      } else {
                        searchedgogs = dogBreeds
                            .where((element) => element
                                .toUpperCase()
                                .contains(val.toUpperCase()))
                            .toList();
                        mystate(() {});
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "search for your dog’s race..",
                      prefixIcon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/search.png",
                            height: height * 0.025,
                          ),
                        ],
                      ),
                      hintStyle:
                          myStyle.inter_A9A29D(height * 0.016, FontWeight.w400),
                      labelStyle:
                          myStyle.inter_49454F(height * 0.016, FontWeight.w400),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Expanded(
                  child: ListView(
                    children: List.generate(
                        searchedgogs.length,
                        (index) => InkWell(
                              onTap: () {
                                setState(() {
                                  mother = searchedgogs[index];
                                });
                                search.clear();
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: width * 0.05, bottom: height * 0.015),
                                child: Text(
                                  searchedgogs[index],
                                  style: myStyle.inter_424242(
                                      height * 0.016, FontWeight.w400),
                                ),
                              ),
                            )),
                  ),
                )
              ],
            ),
          );
        });
      },
    );
  }

  void _fathershowBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      enableDrag: true,
      builder: (BuildContext context) {
        final height = MediaQuery.of(context).size.height;
        final width = MediaQuery.of(context).size.width;
        return StatefulBuilder(builder: (ctx, mystate) {
          return Container(
            height: height * 1,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.025,
                ),
                Text(
                  'What’s your dog’s mother race?',
                  style: myStyle.poppin_57534E(height * 0.02, FontWeight.w400),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xffA0A0AB).withOpacity(0.2)),
                  margin:
                      EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                  padding: EdgeInsets.only(right: width * 0.05),
                  child: TextField(
                    controller: search,
                    onChanged: (val) {
                      if (val.isEmpty) {
                        searchedgogs = dogBreeds;
                        mystate(() {});
                      } else {
                        searchedgogs = dogBreeds
                            .where((element) => element
                                .toUpperCase()
                                .contains(val.toUpperCase()))
                            .toList();
                        mystate(() {});
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "search for your dog’s race..",
                      prefixIcon: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "images/search.png",
                            height: height * 0.025,
                          ),
                        ],
                      ),
                      hintStyle:
                          myStyle.inter_A9A29D(height * 0.016, FontWeight.w400),
                      labelStyle:
                          myStyle.inter_49454F(height * 0.016, FontWeight.w400),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Expanded(
                  child: ListView(
                    children: List.generate(
                        searchedgogs.length,
                        (index) => InkWell(
                              onTap: () {
                                setState(() {
                                  father = searchedgogs[index];
                                });
                                search.clear();
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: width * 0.05, bottom: height * 0.015),
                                child: Text(
                                  searchedgogs[index],
                                  style: myStyle.inter_424242(
                                      height * 0.016, FontWeight.w400),
                                ),
                              ),
                            )),
                  ),
                )
              ],
            ),
          );
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    characterList = (ref.read(authBlocProvider).petTags != null
            ? ref.read(authBlocProvider).petTags!.data
            : [])
        .map((e) => e.name)
        .toList()
        .map((e) => {"text": e, "status": false})
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: currentindex == 0
            ? HomeScreen(context, ref)
            : currentindex == 1
                ? FirstScreen(context, ref)
                : currentindex == 2
                    ? SecondScreen(context, ref)
                    : currentindex == 3
                        ? ThirdScreen(context, ref)
                        : currentindex == 4
                            ? FourthScreen(context, ref)
                            : currentindex == 5
                                ? fifthScreen(context, ref)
                                : currentindex == 6
                                    ? SixthScreen(context, ref)
                                    : currentindex == 7
                                        ? SeventhScreen(context, ref)
                                        : currentindex == 8
                                            ? EighthScreen(context, ref)
                                            : currentindex == 9
                                                ? ninethScreen(context, ref)
                                                : TenthScreen(context, ref));
  }

  final TextEditingController petnameController = TextEditingController();
  final TextEditingController petWeightController = TextEditingController();

  Widget HomeScreen(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 1,
      height: height * 1,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
                margin:
                    EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                child: Text(
                  "Now introduce your dog to Boopee",
                  style: myStyle.poppin_57534E(height * 0.028, FontWeight.w600),
                ),
              ),
            ],
          ),
          Image.asset("images/dog2.0.png"),
          Container(
              margin: EdgeInsets.only(bottom: height * 0.025),
              child: BlueButton(
                  text: "Next ->",
                  onpress: () {
                    setState(() {
                      currentindex = 1;
                    });
                  }))
        ],
      ),
    );
  }

  Widget FirstScreen(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.06,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentindex = 0;
                });
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
              height: height * 0.025,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.075, right: width * 0.05),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                    value: 0.05,
                    minHeight: height * 0.01,
                    color: mycolor,
                    backgroundColor: mycolor.withOpacity(0.5)),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Container(
              width: width * 0.5,
              margin: EdgeInsets.only(left: width * 0.075, right: width * 0.05),
              child: Text(
                "What’s you dog’s name?",
                style: myStyle.poppin_57534E(height * 0.028, FontWeight.w600),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.075, right: width * 0.05),
              child: Text(
                "You won’t be able to change this later.",
                style: myStyle.poppin_79716B(height * 0.016, FontWeight.w400),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            BuildTextField(
              context: context,
              controller: petnameController,
              hint: "Scooby",
              label: "Dogs name",
            )
          ],
        ),
        Container(
            margin: EdgeInsets.only(bottom: height * 0.025),
            child: BlueButton(
                text: "Next ->",
                onpress: () {
                  if (petnameController.text.trim().isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text("Please enter your pet name!"),
                        duration: const Duration(milliseconds: 800),
                        backgroundColor: Colors.red[400]));
                    return;
                  }

                  ref
                      .watch(authBlocProvider.notifier)
                      .updatePetName(petnameController.text.trim());
                  setState(() {
                    currentindex = 2;
                  });
                }))
      ],
    );
  }

  Widget SecondScreen(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: SizedBox(
        width: width * 1,
        height: height * 1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.06,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      currentindex = 1;
                    });
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
                  height: height * 0.025,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: LinearProgressIndicator(
                        value: 0.15,
                        minHeight: height * 0.01,
                        color: mycolor,
                        backgroundColor: mycolor.withOpacity(0.5)),
                  ),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Container(
                  width: width * 0.5,
                  margin:
                      EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                  child: Text(
                    "What’s your dog’s gender?",
                    style:
                        myStyle.poppin_57534E(height * 0.028, FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                  child: Text(
                    "You won’t be able to change this later.",
                    style:
                        myStyle.poppin_79716B(height * 0.016, FontWeight.w400),
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
                                data[index]['status'] = !data[index]['status'];
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
                                            color: Colors.white, size: 13)),
                                  )
                                : const Text(""),
                          ))),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Container(
                  width: width * 0.5,
                  margin:
                      EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                  child: Text(
                    "Sterilized",
                    style:
                        myStyle.poppin_57534E(height * 0.028, FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                  child: Text(
                    "Lorem ipsum dolot sit amet",
                    style:
                        myStyle.poppin_79716B(height * 0.016, FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: height * 0.025,
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: width * 0.075, right: width * 0.075),
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          elevation: 1.5,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Row(
                              children: [
                                Checkbox(
                                    checkColor: Colors.white,
                                    activeColor: mycolor,
                                    focusColor: const Color(0xff49454F),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    value: _isChecked,
                                    onChanged: (val) {
                                      ref
                                          .watch(authBlocProvider.notifier)
                                          .updateIsSterilized(true);
                                      setState(() {
                                        _isChecked = val!;
                                      });
                                    }),
                                Text(
                                  "Ouii",
                                  style: myStyle.inter_4A4A4A(
                                      height * 0.016, FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 1.5,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Row(
                              children: [
                                Checkbox(
                                    checkColor: Colors.white,
                                    activeColor: mycolor,
                                    focusColor: const Color(0xff49454F),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    value: _isChecked2,
                                    onChanged: (val) {
                                      ref
                                          .watch(authBlocProvider.notifier)
                                          .updateIsSterilized(false);
                                      setState(() {
                                        _isChecked2 = val!;
                                      });
                                    }),
                                Text(
                                  "Non",
                                  style: myStyle.inter_4A4A4A(
                                      height * 0.016, FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
                margin: EdgeInsets.only(bottom: height * 0.025),
                child: BlueButton(
                    text: "Next ->",
                    onpress: () {
                      setState(() {
                        currentindex = 3;
                      });
                    }))
          ],
        ),
      ),
    );
  }

  Widget ThirdScreen(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final authState = ref.watch(authBlocProvider);
    final authProvider = ref.watch(authBlocProvider.notifier);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.06,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentindex = 2;
                });
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
              height: height * 0.025,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.075, right: width * 0.05),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                    value: 0.2,
                    minHeight: height * 0.01,
                    color: mycolor,
                    backgroundColor: mycolor.withOpacity(0.5)),
              ),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            Container(
              width: width * 0.7,
              margin: EdgeInsets.only(left: width * 0.075),
              child: Text(
                "What’s you dog’s Birthday?",
                style: myStyle.poppin_57534E(height * 0.028, FontWeight.w600),
              ),
            ),
            SizedBox(
              height: height * 0.015,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.075, right: width * 0.05),
              child: Text(
                "This will help us find your dogs age.",
                style: myStyle.poppin_79716B(height * 0.016, FontWeight.w400),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Container(
              margin: EdgeInsets.only(left: width * 0.075, right: width * 0.05),
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
                    authState.petDob.isEmpty
                        ? "Select your pet dob"
                        : authState.petDob,
                    style: myStyle.poppin_57534E(16.0, FontWeight.w100),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100))
                          .then((value) {
                        if (value != null) {
                          authProvider.updatePetDOB(
                              "${value.day.toString().padLeft(2, "0")}/${value.month.toString().padLeft(2, "0")}/${value.year}");
                        }
                      });
                    },
                    child: Image.asset(
                      "images/calender.png",
                      height: height * 0.025,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Container(
            margin: EdgeInsets.only(bottom: height * 0.025),
            child: BlueButton(
                text: "Next ->",
                onpress: () {
                  if (authState.petDob.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text(
                            "Please select your pet's date of birth!"),
                        duration: const Duration(milliseconds: 800),
                        backgroundColor: Colors.red[400]));
                    return;
                  }
                  setState(() {
                    currentindex = 4;
                  });
                }))
      ],
    );
  }

  Widget FourthScreen(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: height * 0.06,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentindex = 3;
                  });
                },
                child: Container(
                  alignment: Alignment.centerLeft,
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
              SizedBox(height: height * 0.025),
              Container(
                margin:
                    EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                      value: 0.25,
                      minHeight: height * 0.01,
                      color: mycolor,
                      backgroundColor: mycolor.withOpacity(0.5)),
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Container(
                width: width * 0.7,
                margin: EdgeInsets.only(left: width * 0.075),
                child: Text(
                  "What’s you dog’s size?",
                  style: myStyle.poppin_57534E(height * 0.028, FontWeight.w600),
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Container(
                margin:
                    EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                child: Text(
                  "This will help us find your dogs age.",
                  style: myStyle.poppin_79716B(height * 0.016, FontWeight.w400),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              BuildTextField(
                  context: context,
                  controller: petWeightController,
                  label: "Dog’s Weight",
                  hint: "Enter you dog’s weight",
                  date: false),
              SizedBox(
                height: height * 0.05,
              ),
              CustomDropdownButton(
                value: choice,
                labelText: 'Size of the dog',
                items: const ["a", "b", "c"],
                onChanged: (val) {},
              ),
              SizedBox(height: height * 0.025),
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.only(bottom: height * 0.025),
            child: BlueButton(
                text: "Next ->",
                onpress: () {
                  if (petWeightController.text.trim().isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: const Text("Please enter your pet's weight!"),
                        duration: const Duration(milliseconds: 800),
                        backgroundColor: Colors.red[400]));
                    return;
                  }

                  ref
                      .watch(authBlocProvider.notifier)
                      .updatePetWeight(petWeightController.text.trim());
                  setState(() {
                    currentindex = 5;
                  });
                }))
      ],
    );
  }

  Widget fifthScreen(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 1,
      height: height * 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.06,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentindex = 4;
                  });
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
                height: height * 0.025,
              ),
              Container(
                margin:
                    EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                      value: 0.35,
                      minHeight: height * 0.01,
                      color: mycolor,
                      backgroundColor: mycolor.withOpacity(0.5)),
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Container(
                width: width * 0.7,
                margin: EdgeInsets.only(left: width * 0.075),
                child: Text(
                  "Show people how cute your dog is.",
                  style: myStyle.poppin_57534E(height * 0.028, FontWeight.w600),
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Container(
                margin:
                    EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                child: Text(
                  "This will be displayed on your profile.",
                  style: myStyle.poppin_79716B(height * 0.016, FontWeight.w400),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              SizedBox(
                width: width * 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DottedBorder(
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(12),
                      padding: const EdgeInsets.all(6),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        child: SizedBox(
                          width: width * 0.75,
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Image.asset("images/tri.png",
                                  height: height * 0.22, fit: BoxFit.fill),
                              Container(
                                margin: EdgeInsets.only(
                                    left: width * 0.075, right: width * 0.05),
                                child: Text(
                                  "Format allowed: PNG, JPEG, JPG 1920:1080 (max 20mb)",
                                  style: myStyle.poppin_79716B(
                                      height * 0.016, FontWeight.w400),
                                ),
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              whiteButton(
                                text: "Upload photo",
                                onpress: () {},
                              ),
                              SizedBox(
                                height: height * 0.02,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.only(bottom: height * 0.025),
              child: BlueButton(
                  text: "Next ->",
                  onpress: () {
                    setState(() {
                      currentindex = 6;
                    });
                  }))
        ],
      ),
    );
  }

  Widget SixthScreen(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 1,
      height: height * 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.06,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentindex = 4;
                  });
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
                height: height * 0.025,
              ),
              Container(
                margin:
                    EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                      value: 0.4,
                      minHeight: height * 0.01,
                      color: mycolor,
                      backgroundColor: mycolor.withOpacity(0.5)),
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Container(
                width: width * 0.7,
                margin: EdgeInsets.only(left: width * 0.075),
                child: Text(
                  "Record your dog’s barking",
                  style: myStyle.poppin_57534E(height * 0.028, FontWeight.w600),
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Container(
                margin:
                    EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                child: Text(
                  "This will help people identify your dog.",
                  style: myStyle.poppin_79716B(height * 0.016, FontWeight.w400),
                ),
              ),
              SizedBox(
                height: height * 0.2,
              ),
              SizedBox(
                width: width * 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundColor: Color(0xffEAEAEA),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: width * 0.075, right: width * 0.05),
                      child: Text(
                        "Start recording\n(max time 10s)",
                        style: myStyle.poppin_79716B(
                            height * 0.016, FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.only(bottom: height * 0.025),
              child: BlueButton(
                  text: "Next ->",
                  onpress: () {
                    setState(() {
                      currentindex = 7;
                    });
                  }))
        ],
      ),
    );
  }

  Widget SeventhScreen(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 1,
      height: height * 1,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "images/bg2.png",
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
                    setState(() {
                      currentindex = 6;
                    });
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    margin:
                        EdgeInsets.only(left: width * 0.05, top: height * 0.05),
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
                    Center(
                      child: CircleAvatar(
                          radius: 30,
                          backgroundColor:
                              const Color.fromRGBO(110, 204, 185, 0.08),
                          child: Image.asset(
                            "images/voice.png",
                            height: height * 0.035,
                          )),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: width * 0.075, right: width * 0.05),
                      child: Text(
                        "Allow Microphone",
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
                        text: "Allow notifications",
                        onpress: () {
                          setState(() {
                            currentindex = 8;
                          });
                        }),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          currentindex = 8;
                        });
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
    );
  }

  Widget EighthScreen(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 1,
      height: height * 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.06,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentindex = 7;
                  });
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
                height: height * 0.025,
              ),
              Container(
                margin:
                    EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                      value: 0.55,
                      minHeight: height * 0.01,
                      color: mycolor,
                      backgroundColor: mycolor.withOpacity(0.5)),
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Container(
                width: width * 0.7,
                margin: EdgeInsets.only(left: width * 0.075),
                child: Text(
                  "Record your dog’s barking",
                  style: myStyle.poppin_57534E(height * 0.028, FontWeight.w600),
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Container(
                margin:
                    EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                child: Text(
                  "This will help people identify your dog.",
                  style: myStyle.poppin_79716B(height * 0.016, FontWeight.w400),
                ),
              ),
              SizedBox(
                height: height * 0.2,
              ),
              SizedBox(
                width: width * 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: width * 0.15, right: width * 0.15),
                      child: Image.asset(
                        "images/wave.png",
                      ),
                    ),
                    SizedBox(
                      height: height * 0.035,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: const Color(0xffEAEAEA),
                      child: Image.asset(
                        "images/play.png",
                        height: height * 0.035,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: width * 0.075, right: width * 0.05),
                      child: Text(
                        "Stop recording",
                        style: myStyle.poppin_79716B(
                            height * 0.016, FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.only(bottom: height * 0.025),
              child: Column(
                children: [
                  BlueButton(
                      text: "Next ->",
                      onpress: () {
                        setState(() {
                          currentindex = 9;
                        });
                      }),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        currentindex = 9;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          left: width * 0.075, right: width * 0.05),
                      child: Text(
                        "Skip for now",
                        style: myStyle.poppin_79716B(
                            height * 0.016, FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  String? mother;
  String? father;
  bool mixed = false;

  Widget ninethScreen(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 1,
      height: height * 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.06,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentindex = 8;
                  });
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
                height: height * 0.025,
              ),
              Container(
                margin:
                    EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                      value: 0.65,
                      minHeight: height * 0.01,
                      color: mycolor,
                      backgroundColor: mycolor.withOpacity(0.5)),
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Container(
                width: width * 0.7,
                margin: EdgeInsets.only(left: width * 0.075),
                child: Text(
                  "What’s your dog’s race?",
                  style: myStyle.poppin_57534E(height * 0.028, FontWeight.w600),
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Container(
                margin:
                    EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                child: Text(
                  "Choose you dog’s race.",
                  style: myStyle.poppin_79716B(height * 0.016, FontWeight.w400),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 2,
                  margin: EdgeInsets.only(
                      left: width * 0.05,
                      right: width * 0.05,
                      bottom: height * 0.015),
                  child: ListTile(
                      onTap: () {},
                      title: Text(
                          (father == null && mother == null)
                              ? "Mixed"
                              : "fixed",
                          style: mixed == false
                              ? myStyle.inter_A9A29D(
                                  height * 0.016, FontWeight.w400)
                              : myStyle.inter_424242(
                                  height * 0.016, FontWeight.w700)),
                      trailing: Switch(
                        value: mixed,
                        onChanged: (val) {
                          setState(() {
                            mixed = val;
                          });
                        },
                        activeTrackColor: mycolor.withOpacity(0.5),
                        activeColor: mycolor,
                        inactiveTrackColor: const Color(0xffF2F4F7),
                      ))),
              if (mixed == false)
                Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 2,
                    margin: EdgeInsets.only(
                        left: width * 0.05,
                        right: width * 0.05,
                        bottom: height * 0.015),
                    child: ListTile(
                        onTap: () {},
                        title: Text(
                          "Race (Selected race)",
                          style: myStyle.inter_44403C(
                              height * 0.016, FontWeight.w600),
                        ),
                        trailing: CircleAvatar(
                          radius: 10,
                          backgroundColor: mycolor,
                          child: const Center(
                              child: Icon(Icons.done,
                                  color: Colors.white, size: 13)),
                        ))),
              if (mixed)
                Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 2,
                    margin: EdgeInsets.only(
                        left: width * 0.05,
                        right: width * 0.05,
                        bottom: height * 0.015),
                    child: ListTile(
                        onTap: () {
                          _mothershowBottomSheet();
                        },
                        minLeadingWidth: width * 0.05,
                        leading: Image.asset(
                          "images/vector1.png",
                          height: height * 0.027,
                          color: const Color(0xff44403C),
                        ),
                        title: Text(
                          mother == null
                              ? "Choose mother’s race"
                              : mother.toString(),
                          style: mother == null
                              ? myStyle.inter_79716B(
                                  height * 0.016, FontWeight.w400)
                              : myStyle.inter_79716B(
                                  height * 0.016, FontWeight.w600),
                        ),
                        trailing: const Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Color(0xff44403C),
                        ))),
              if (mixed)
                Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 2,
                    margin: EdgeInsets.only(
                        left: width * 0.05,
                        right: width * 0.05,
                        bottom: height * 0.015),
                    child: ListTile(
                        onTap: () {
                          _fathershowBottomSheet();
                        },
                        minLeadingWidth: width * 0.05,
                        leading: Image.asset(
                          "images/Vector2.png",
                          height: height * 0.027,
                          color: const Color(0xff44403C),
                        ),
                        title: Text(
                          father == null
                              ? "Choose father’s race"
                              : father.toString(),
                          style: father == null
                              ? myStyle.inter_79716B(
                                  height * 0.016, FontWeight.w400)
                              : myStyle.inter_79716B(
                                  height * 0.016, FontWeight.w600),
                        ),
                        trailing: const Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Color(0xff44403C),
                        ))),
              SizedBox(
                height: height * 0.05,
              ),
            ],
          ),
          Container(
              margin: EdgeInsets.only(bottom: height * 0.025),
              child: BlueButton(
                  text: "Choose race",
                  onpress: () {
                    setState(() {
                      currentindex = 10;
                    });
                  }))
        ],
      ),
    );
  }

  Widget TenthScreen(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 1,
      height: height * 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.06,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentindex = 9;
                  });
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
                height: height * 0.025,
              ),
              Container(
                margin:
                    EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                      value: 0.85,
                      minHeight: height * 0.01,
                      color: mycolor,
                      backgroundColor: mycolor.withOpacity(0.5)),
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Container(
                width: width * 0.8,
                margin:
                    EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                child: Text(
                  "How would you describe your dog?",
                  style: myStyle.poppin_57534E(height * 0.028, FontWeight.w600),
                ),
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Container(
                margin:
                    EdgeInsets.only(left: width * 0.075, right: width * 0.05),
                child: Text(
                  "This will help you match with other dogs.",
                  style: myStyle.poppin_79716B(height * 0.016, FontWeight.w400),
                ),
              ),
              Container(
                height: height * 0.48,
                width: width * 1,
                margin:
                    EdgeInsets.only(left: width * 0.05, right: width * 0.05),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        crossAxisSpacing: 5,
                        maxCrossAxisExtent: 140,
                        mainAxisExtent: height * 0.05),
                    shrinkWrap: true,
                    itemCount: characterList.length,
                    itemBuilder: (context, index) {
                      return Chip(
                          backgroundColor: characterList[index]['status']
                              ? mycolor
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: characterList[index]['status']
                                    ? mycolor
                                    : const Color(0xff49454F),
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          label: Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      characterList[index]['status'] =
                                          !characterList[index]['status'];
                                    });
                                  },
                                  child: Text(
                                    characterList[index]['text'].toString(),
                                    style: characterList[index]['status']
                                        ? myStyle.inter_white(
                                            height * 0.016, FontWeight.w400)
                                        : myStyle.inter_424242(
                                            height * 0.016, FontWeight.w400),
                                  ),
                                ),
                              ),
                              if (characterList[index]['status'])
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        characterList.removeAt(index);
                                      });
                                    },
                                    child: const Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 15,
                                    ))
                            ],
                          ));
                    }),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.only(bottom: height * 0.025),
              child: BlueButton(
                  text: "Next ->",
                  onpress: () {
                    String desc = "";
                    for (final all in characterList) {
                      if (all['status'] == true) {
                        desc == ""
                            ? desc = all['text'].toString()
                            : desc = "$desc,${all['text']}";
                      }
                    }

                    if (desc.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: const Text(
                              "Please select any one to describe your dog!"),
                          duration: const Duration(milliseconds: 800),
                          backgroundColor: Colors.red[400]));
                      return;
                    }

                    ref
                        .watch(authBlocProvider.notifier)
                        .updatePetDescription(desc);
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const ThankyouScreen();
                    }));
                  }))
        ],
      ),
    );
  }
}
