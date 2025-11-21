import 'dart:developer';

import 'package:bloc_firebase_auth_kit/bloc_firebase_auth_kit.dart';
import 'package:fire_bse/Feature/auth/Domain/Repository/auth_repository.dart';
import 'package:fire_bse/Feature/auth/Domain/entity/login_entity.dart';
import 'package:fire_bse/Feature/auth/Domain/entity/signup_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignupRepositoryimpl implements auth_repository {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;

  SignupRepositoryimpl({required this.auth, required this.firestore});
  @override
  Future<void> Signup(SignupEntity entity) async {
    try {
      final userCredential = await auth.createUserWithEmailAndPassword(
        email: entity.email,
        password: entity.password,
      );
      log("UID: ${userCredential}");
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        await user.updateDisplayName(entity.name);
        await user.reload();
        final updatedUser = auth.currentUser;
        log("Updated DisplayName: ${updatedUser?.displayName}");
        await FirebaseFirestore.instance.collection('user').doc(user.uid).set({
          'uid': user.uid,
          'email': user.email,
          'displayName': updatedUser?.displayName ?? 'No Name',
          'createdAt': FieldValue.serverTimestamp(),

        });
        log(
          "✅ User created successfully in Firestore with name: ${updatedUser?.displayName}",
        );
      } else {
        print("User not signed in!");
      }
    } on FirebaseAuthException catch (e) {
      throw Exception(e.message ?? "Signup failed");
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> Login(LoginEntity entity) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: entity.email,
        password: entity.password,
      );
        log("Login successfully.....✅");
    } on FirebaseAuthException catch (e) {
       log("FirebaseAuthException: ${e.code} - ${e.message}");
      throw Exception(e.message ?? "Login  failed");
    } 
  }
  
  @override
  Future<void> GooglesignIn() async{
    final GoogleSignInAccount? googleuser = await GoogleSignIn().signIn();
    if(googleuser ==null) return;
      // log("////////googleuser////////");
    final GoogleAuth =await googleuser.authentication;
    // ("////////GoogleAuth////////");
    final credentional =await GoogleAuthProvider.credential(
      accessToken: GoogleAuth.accessToken,
      idToken: GoogleAuth.idToken
    );
       log("////////credentional////////");
  final result=  await auth.signInWithCredential(credentional);
  // log("result of goodle signin $result");
  // print("////////////////////////////");

  }
  
  @override
  Future<void> LogOut() async{
 return  await auth.signOut();
  }
}
