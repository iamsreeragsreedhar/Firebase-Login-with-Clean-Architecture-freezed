part of 'signup_bloc.dart';

@freezed
abstract class SignupState with _$SignupState {
   factory SignupState({
    @Default(false) bool? Issuccess,
    @Default(false) bool? Isloading,
    @Default(false) bool? Isfailure,
    @Default('') String Errormessage
    }) =_$signupState;
}