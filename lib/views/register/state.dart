part of 'cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterLoadingState extends RegisterState {}

final class RegisterSuccessState extends RegisterState {}

final class RegisterFailerState extends RegisterState {
  final String errorMsg;

  RegisterFailerState({required this.errorMsg});
}
