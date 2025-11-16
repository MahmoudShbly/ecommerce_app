import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/common/theme/app_theme.dart';
import 'package:flutter_ecommerce_app/core/utils/app_routers.dart';
import 'package:flutter_ecommerce_app/presentation/cubits/auth_manager/sign_in_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      providers: [
        BlocProvider<SignInCubit>(
          create: (context) => SignInCubit(),
        ),
        // BlocProvider<SignUpCubit>(
        //   create: (context) => SignUpCubit(),
        // ),
        // BlocProvider<SignInCubit>(
        //   create: (context) => SignInCubit(),
        // ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter E-commerce App',
        theme: AppTheme.appTheme,
        routerConfig: AppRouters.routers,),
    );
  }
}

