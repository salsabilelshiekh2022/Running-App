import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:running_app/core/functions/snack_bar.dart';

import '../../core/router/router.dart';
import '../home/view.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  String? email, password;
  final GlobalKey<FormState> formKey = GlobalKey();
  static LoginCubit of(context) => BlocProvider.of(context);

  loginWithEmailAndPasword() async {
    formKey.currentState!.save();
    if (formKey.currentState!.validate()) {
      emit(LoginLoadingState());
      try {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email!, password: password!);
        showSnackBar("Login successfully!", Colors.green[600]!);
        AppRouter.navigateAndPop(const HomeView());
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          showSnackBar('No user found for that email.', Colors.red[600]!);
        } else if (e.code == 'wrong-password') {
          showSnackBar(
              'Wrong password provided for that user.', Colors.red[600]!);
        }
      }
    }
  }
}
