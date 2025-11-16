import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/common/theme/styles.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_button.dart';
import 'package:flutter_ecommerce_app/common/widgets/custom_text_form_field.dart';
import 'package:flutter_ecommerce_app/presentation/cubits/auth_manager/sign_in_cubit.dart';

class SigninView extends StatelessWidget {
  SigninView({super.key});
  final emailController = TextEditingController();
  final emailFocusNode = FocusNode();
  final passwordController = TextEditingController();
  final passwordFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cubit = context.read<SignInCubit>();

    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * .1),
                Text('Sign in', style: Styles.textStyle32),
                SizedBox(height: 32),
                CustomTextFormField(
                  label: cubit.isEmail ? 'Email' : 'Password',
                  focusNode: cubit.isEmail ? emailFocusNode : passwordFocusNode,
                  nextAction: () {},
                  type: cubit.isEmail
                      ? TextInputType.emailAddress
                      : TextInputType.visiblePassword,
                  controller: cubit.isEmail ? emailController : passwordController,
                ),
                SizedBox(height: 16),
                CustomButton(
                  title: cubit.isEmail ? 'Continue' : 'Login',
                  onTap: () {
                    cubit.changeFieldType();
                  },
                ),
                SizedBox(height: 16),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: cubit.isEmail?'Don\'t have an account?':'Forgot your password?'),
                      TextSpan(
                        text:cubit.isEmail? ' Create':' Reset',
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
