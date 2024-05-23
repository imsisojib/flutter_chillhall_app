import 'package:fluro/fluro.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chillhall_app/router/routes.dart';
import 'package:flutter_chillhall_app/src/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter_chillhall_app/src/features/auth/presentation/screens/screen_signup.dart';

class RouterHelper {
  static final FluroRouter router = FluroRouter();

  ///AUTH-FLOW
  static final Handler _loginHandler = Handler(
    handlerFunc: (context, Map<String, dynamic> params) => LoginScreen(),
  );
  static final Handler _signupScreenHandler = Handler(
    handlerFunc: (context, Map<String, dynamic> params) => ScreenSignUp(),
  );

//*******Route Define*********
  static void setupRouter() {
    //router.notFoundHandler = _notFoundHandler;
    router.notFoundHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      if (kDebugMode) {
        print("ROUTE WAS NOT FOUND !!!");
      }
      return;
    });

    router.define(Routes.LOGIN, handler: _loginHandler, transitionType: TransitionType.cupertino);
    router.define(Routes.SIGNUP, handler: _signupScreenHandler, transitionType: TransitionType.cupertino);

  }
}
