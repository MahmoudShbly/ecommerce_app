import 'package:flutter_ecommerce_app/presentation/views/signin/signin_view.dart';
import 'package:flutter_ecommerce_app/presentation/views/splash/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const kSigninView = '/kSigninView';

  static final routers = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashView()),
    GoRoute(path: kSigninView, builder: (context, state)=>SigninView()),
  ]);
 
}