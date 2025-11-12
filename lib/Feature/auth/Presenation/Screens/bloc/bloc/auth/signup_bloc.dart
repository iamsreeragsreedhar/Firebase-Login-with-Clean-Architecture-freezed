// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bloc_firebase_auth_kit/bloc_firebase_auth_kit.dart' hide sl;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fire_bse/Core/di/service_locator.dart';
import 'package:fire_bse/Feature/auth/Domain/entity/login_entity.dart';
import 'package:fire_bse/Feature/auth/Domain/entity/signup_entity.dart';
import 'package:fire_bse/Feature/auth/Domain/usecase/google_signin_usecase.dart';
import 'package:fire_bse/Feature/auth/Domain/usecase/login_usecase.dart';
import 'package:fire_bse/Feature/auth/Domain/usecase/signnup_usecase.dart';

part 'signup_bloc.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
   SignupUsecase usecase;
   Loginusecase loginusecase;
   GoogleSigninUsecase googlesignin;
  SignupBloc(
    this.usecase,
    this.loginusecase,
    this.googlesignin,
  ) : super(SignupState()) {
    on<SignupPressed>(_signup);
    on<LoginPressed>(_login);
    on<GoogleSignIn>(_googleSignIn);
  }

  _signup(SignupPressed event, Emitter<SignupState> emit) async {
    emit(state.copyWith(Isloading: true));
    try {
      await usecase.Signup(
        SignupEntity(email: event.email, password: event.password, name: event.displayname),
      );
      emit(state.copyWith(Issuccess: true));
    } catch (e) {
      emit(state.copyWith(Isfailure: true, Errormessage: e.toString()));

      await Future.delayed(const Duration(seconds: 2));
      emit(SignupState());
    }
  }

  _login(LoginPressed event,Emitter<SignupState>emit)async{
      //  emit(state.copyWith(
      //   Issuccess: false,
      //   Isloading: true,
      //   Isfailure: false
      // ));
    try {
      await loginusecase.Login(LoginEntity(email: event.email, password: event.password));
      emit(state.copyWith(
        Issuccess: true,
        Isloading: false,
        Isfailure: false
      ));
      log("inside the successs emit");
    } catch (e) {
        emit(state.copyWith(
        Issuccess: false,
        Isloading: false,
        Isfailure: true,
        Errormessage: e.toString()
      ));
      
    }
  }


  _googleSignIn(GoogleSignIn event,Emitter<SignupState>emit)async{
    try {
      await googlesignin.Googlesignin();
      emit(state.copyWith(
        Issuccess: true,
        Isloading: false,
        Isfailure: false
      ));
    } catch (e) {
       emit(state.copyWith(
        Issuccess: false,
        Isloading: false,
        Isfailure: true,
        Errormessage: e.toString()
      ));
    }
  }
}
