import 'package:boopee/map/map1.dart';
import 'package:boopee/mapsplash.dart';
import 'package:boopee/screens/Group/EmptyState.dart';
import 'package:boopee/screens/Group/all_groups.dart';
import 'package:boopee/screens/Group/checkmemeber.dart';
import 'package:boopee/screens/Group/singlegroup.dart';
import 'package:boopee/screens/PhoneConfirmatiob.dart';
import 'package:boopee/screens/add-cover.dart';
import 'package:boopee/screens/add_description.dart';
import 'package:boopee/screens/all_notification_.dart';
import 'package:boopee/screens/birthday.dart';
import 'package:boopee/screens/cgu.dart';
import 'package:boopee/screens/clan/creating_event.dart';

import 'package:boopee/screens/clan/invite_memeber.dart';
import 'package:boopee/screens/clan/request_join_group.dart';
import 'package:boopee/screens/confirm_email.dart';
import 'package:boopee/screens/conversation.dart';
import 'package:boopee/screens/create_group.dart';
import 'package:boopee/screens/discover.dart';
import 'package:boopee/screens/dogs_info.dart';
import 'package:boopee/screens/finish.dart';
import 'package:boopee/screens/gender.dart';
import 'package:boopee/screens/group_add_cover.dart';
import 'package:boopee/screens/location.dart';
import 'package:boopee/screens/myprofile.dart';
import 'package:boopee/screens/myprofile2.dart';
import 'package:boopee/screens/notification.dart';
import 'package:boopee/screens/phone_number.dart';
import 'package:boopee/screens/postDetail.dart';
import 'package:boopee/screens/premium.dart';
import 'package:boopee/screens/recoveryEmail.dart';
import 'package:boopee/screens/reel.dart';
import 'package:boopee/screens/setting.dart';
import 'package:boopee/screens/splash.dart';
import 'package:boopee/screens/user_inscription.dart';
import 'package:boopee/screens/username.dart';
import 'package:boopee/screens/verify.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:camera/camera.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
List<CameraDescription> cameras=[];
void main() async{
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(),
    );
  }
}

