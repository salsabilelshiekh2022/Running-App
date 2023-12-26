import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  String? email, password;
  final GlobalKey<FormState> formKey = GlobalKey();
  static RegisterCubit of(context) => BlocProvider.of(context);

  registerWithEmailAndPassword() async {
    formKey.currentState!.save();
    if (formKey.currentState!.validate()) {
      try {
        emit(RegisterLoadingState());
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email!,
          password: password!,
        );
        emit(RegisterSuccessState());
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          emit(RegisterFailerState(
              errorMsg: 'The password provided is too weak.'));
        } else if (e.code == 'email-already-in-use') {
          emit(RegisterFailerState(
              errorMsg: 'The account already exists for that email.'));
        }
      } catch (e) {
        emit(RegisterFailerState(errorMsg: e.toString()));
      }
    }
  }
}
