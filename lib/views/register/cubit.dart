import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  singUpWithEmailAndPassword({required String emailAddress, required String password})async{
    try {
 await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: emailAddress,
    password: password,
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
   debugPrint('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    debugPrint('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}
  }
}
