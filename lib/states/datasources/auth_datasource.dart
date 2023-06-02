import 'package:boopee/modal/register_request_model.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthDatasource {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<User?> getCurrentUser() async {
    return _firebaseAuth.currentUser;
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<bool> registerUser(RegisterRequestModel request) async {
    final dio = Dio();
    dio.options.headers['Accept'] = 'application/html';
    dio.options.headers['Content-Type'] = 'application/x-www-form-urlencoded';

    print("REQUEST: ${request.toJson()}");
    print(dio.options.headers.toString());

    // final formData = FormData.fromMap({});
    final formData = FormData.fromMap({
      "first_name": request.firstName,
      "last_name": request.lastName,
      "pseudo": "${request.firstName}-${request.lastName}",
      "password": "Test@12345",
      "email": request.email,
      "phone_number": request.phoneNumber,
      "is_tos_accepted": request.isTosAccepted,
      "is_offer_notification_enabled": request.isOfferNotificationsEnabled,
      "is_gps_enabled": request.isGpsEnabled,
      "dob": request.dob,
      "pet_name": request.petName,
      "is_sterilized": request.isSterilized,
      "pet_size": request.petSize,
      "pet_weight": request.petWeight,
      "pet_description": request.petDescription,
      "owner_gender_id": "4e077bee-e841-4cc5-b589-24f6a6607a2d",
      "pet_gender_id": "39c20123-f12b-4267-80c3-34444fa60b05"
    });

    final response = await dio.post('https://boopee.lifemoz.com/users/add',
        data: formData, options: Options(
      validateStatus: (status) {
        return status! < 400;
      },
    ));

    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 302) {
      return true;
    } else {
      return false;
    }
  }
}
