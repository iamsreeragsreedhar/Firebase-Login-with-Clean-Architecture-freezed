part of 'signup_bloc.dart';


enum AuthLoadingStatus {
  none,
  login,
  google,
  signup,
  logout
}

@freezed
abstract class SignupState with _$SignupState {
   factory SignupState({
    @Default(false) bool Issuccess,
    @Default(false) bool Isloading,
    @Default(false) bool Isfailure,
    @Default(AuthLoadingStatus.none) AuthLoadingStatus loadingtype,
    @Default('') String Errormessage
    
    }) =_$signupState;
}