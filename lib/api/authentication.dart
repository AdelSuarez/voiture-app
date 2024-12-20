import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
  final _firebaseAuth = FirebaseAuth.instance;

  Future<void> registerUser({
    required String email,
    required String password,
    required BuildContext context,
    required Function onSuccess,
    required Function(String, Color) showMessage,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);

      showMessage('Usuario registrado con éxito', Colors.green);
      Future.delayed(const Duration(seconds: 2), () {
        onSuccess();
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        showMessage('El email proporcionado no es válido', Colors.red);
      } else if (e.code == 'email-already-in-use') {
        showMessage('El email proporcionado ya está en uso', Colors.red);
      } else {
        showMessage(e.message!, Color(Colors.grey[900] as int));
      }
    }
  }

  Future<void> loginUser({
    required String email,
    required String password,
    required BuildContext context,
    required Function onSuccess,
    required Function(String, Color) showMessage,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);

      onSuccess();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        showMessage('El email proporcionado no es válido', Colors.red);
      } else if (e.code == 'invalid-credential') {
        showMessage('Credenciales inválidas', Colors.red);
      } else {
        showMessage(e.message!, Color(Colors.grey[900] as int));
      }
    }
  }

  Future<void> loginWithGoogle({
    required BuildContext context,
    required Function onSuccess,
    required Function(String, Color) showMessage,
  }) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        // El usuario canceló el inicio de sesión
        showMessage('Inicio de sesión cancelado', Colors.red);
        return;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await _firebaseAuth.signInWithCredential(credential);

      onSuccess();
    } on FirebaseAuthException catch (e) {
      showMessage(e.message!, Colors.red);
    } catch (e) {
      showMessage('Error: $e', Colors.red);
      print(e);
    }
  }

  Future<void> logoutUser(BuildContext context) async {
    await _firebaseAuth.signOut();
    Navigator.pushNamed(context, 'login');
  }
}
