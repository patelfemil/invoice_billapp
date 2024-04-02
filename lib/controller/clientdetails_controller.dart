import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:invoice_billapp/home_page.dart';
import 'package:invoice_billapp/login_page.dart';
import 'package:invoice_billapp/otp_page.dart';

class ClientController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  RxBool isLoad = false.obs;

  GoogleSignIn googleSignIn = GoogleSignIn(
    scopes: <String>[
      'email',
      // Add other required scopes if needed
    ],
  );

  Future<void> handleSignIn() async {
    try {
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();

      GoogleSignInAuthentication googleAuth =
          await googleSignInAccount!.authentication;

      disconnectGoogle();

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      final User? user = userCredential.user;

      if (user != null) {
        // Save user information to Firestore
        await _firestore.collection('users').doc(user.uid).set({
          'displayName': user.displayName,
          'email': user.email,
          // Add other user information as needed
        });

        Get.to(HomePage());
      }
    } catch (error) {
      print('Error signing in: $error');
    }
  }

  void handleSignOut() async {
    try {
      await googleSignIn.signOut();
      _googleSignIn.disconnect();

      await _auth.signOut();
      // disconnectGoogle();
      Get.offAll(LoginPage());
    } catch (error) {
      print('Error signing out: $error');
    }
  }

  Future<void> disconnectGoogle() async {
    try {
      await _googleSignIn.disconnect();
    } catch (error) {
      print('Error disconnecting Google account: $error');
    }
  }

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  String verificationId = '';

  Future<void> verifyPhoneNumber() async {
    final PhoneVerificationCompleted verificationCompleted =
        (AuthCredential phoneAuthCredential) {
      _auth.signInWithCredential(phoneAuthCredential);
      // Perform further actions, such as navigating to the next screen.
    };

    final PhoneVerificationFailed verificationFailed =
        (FirebaseAuthException authException) {
      print(
          'Phone number verification failed. Code: ${authException.code}. Message: ${authException.message}');
      // Show error message to the user.
    };

    codeSent(String id, [int? forceResendingToken]) async {
      verificationId = id;
      Get.to(const OtpPage());

      // Navigate to the OTP screen.
    }

    final PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout =
        (String verificationId) {
      verificationId = verificationId;
    };

    await _auth.verifyPhoneNumber(
      phoneNumber: '+91${phoneNumberController.text}',
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }

  void signInWithPhoneNumber() async {
    final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: otpController.text);

    await _auth.signInWithCredential(credential);
    // Perform further actions, such as navigating to the next screen.
    Get.to(HomePage());
  }

  showToast(context, data) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(data),
    ));
  }
}
