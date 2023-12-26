import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:running_app/core/router/router.dart';
import 'package:running_app/views/home/view.dart';

import '../../core/functions/snack_bar.dart';

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
        showSnackBar("Account create successfully!", Colors.green[600]!);
        AppRouter.navigateAndPop(const HomeView());
        //emit(RegisterSuccessState());
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          showSnackBar('The password provided is too weak.', Colors.red[600]!);
          emit(RegisterFailerState(
              errorMsg: 'The password provided is too weak.'));
        } else if (e.code == 'email-already-in-use') {
          showSnackBar(
              'The account already exists for that email.', Colors.red[600]!);

          emit(RegisterFailerState(
              errorMsg: 'The account already exists for that email.'));
        }
      } catch (e) {
        showSnackBar(e.toString(), Colors.red[600]!);

        emit(RegisterFailerState(errorMsg: e.toString()));
      }
    }
  }
}
