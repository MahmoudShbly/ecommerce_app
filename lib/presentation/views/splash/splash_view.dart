import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/core/configs/theme/app_colors.dart';
import 'package:flutter_ecommerce_app/core/utils/app_assets.dart';
import 'package:flutter_ecommerce_app/core/utils/app_routers.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}


class _SplashViewState extends State<SplashView> {
//   @override
//   void initState() {
//   super.initState();
//   nextPage();
  
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Image.asset(AppAssets.logo),
      ),
    );
  }
}
void nextPage() {
  Future.delayed(const Duration(seconds: 3), () {
    AppRouters.routers.go(AppRouters.kSigninView);
  });
}