import 'package:boopee/modal/pet_tags_model.dart';
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

    final formData = FormData.fromMap({
      "first_name": request.firstName,
      "last_name": request.lastName,
      "pseudo": "${request.firstName}-${request.lastName}".toLowerCase(),
      "email": request.email,
      "password": "Test@12345",
      "phone_number": request.phoneNumber,
      "owner_gender_id": "4e077bee-e841-4cc5-b589-24f6a6607a2d",
      "pet_gender_id": "39c20123-f12b-4267-80c3-34444fa60b05",
      "is_tos_accepted": request.isTosAccepted ? "1" : "0",
      "is_offer_notifications_enabled":
          request.isOfferNotificationsEnabled ? "1" : "0",
      "is_gps_enabled": request.isGpsEnabled ? "1" : "0",
      "dob": request.dob,
      "pet_name": request.petName,
      "is_sterilized": request.isSterilized ? "1" : "0",
      "pet_size": request.petSize,
      "pet_weight": request.petWeight,
      "pet_description": request.petDescription,
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

  Future<PetTags> getPetTags() async {
    final dio = Dio();
    dio.options.headers['Accept'] = 'application/json';

    final response = await dio.get('https://boopee.lifemoz.com/api/pettags');

    print(response.data);
    final result = PetTags.fromJson(response.data);

    return result;
  }
}
