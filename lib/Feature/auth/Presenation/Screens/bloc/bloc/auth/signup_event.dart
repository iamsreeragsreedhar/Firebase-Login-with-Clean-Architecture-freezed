part of 'signup_bloc.dart';

@freezed
abstract class SignupEvent with _$SignupEvent {
  const factory SignupEvent.signupPressed(email,password,displayname) = SignupPressed;
  const factory SignupEvent.loginPressed(email,password) = LoginPressed;
  const factory SignupEvent.googleSignIn() = GoogleSignIn;
}