part of 'sign_in_cubit.dart';

@immutable
sealed class SignInState {}

final class AuthInitial extends SignInState {}
final class ChangeFieldTypeState extends SignInState {}
