import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:tiktok_clone/constants/firebase_constants.dart';

class RegisterController extends GetxController {
  _uploadToStorage(File profilePicture) async {
    Reference ref = firebaseStorage.ref().child('profilePics').child(
          firebaseAuth.currentUser!.uid,
        );
    UploadTask uploadTask = ref.putFile(profilePicture);
    TaskSnapshot taskSnapshot = await uploadTask;
    String downloadUrl = await taskSnapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  void registerUser(String userName, String email, String password,
      File? profilePicture) async {
    try {
      if (userName.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty &&
          profilePicture != null) {
        UserCredential userCredential =
            await firebaseAuth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        String downloadUrl = await _uploadToStorage(profilePicture);
      }
    } catch (e) {
      Get.snackbar(
        'Error creating account',
        e.toString(),
      );
    }
  }
}
