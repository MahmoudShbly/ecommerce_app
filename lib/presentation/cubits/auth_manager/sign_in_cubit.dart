import 'package:bloc/bloc.dart';
import 'package:flutter_ecommerce_app/core/utils/app_enums.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(AuthInitial());
  AppEnums fieldType = AppEnums.email;
  void changeFieldType (){
    if(fieldType==AppEnums.email){
      fieldType=AppEnums.password;
    }
    else{
      fieldType=AppEnums.email;
    }
    emit(ChangeFieldTypeState());

  }
  bool get isEmail =>fieldType== AppEnums.email;
}
