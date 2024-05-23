import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chillhall_app/resources/app_strings.dart';
import 'package:flutter_chillhall_app/router/router_helper.dart';
import 'package:flutter_chillhall_app/router/routes.dart';
import 'package:flutter_chillhall_app/theme/dark_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ChillHall extends StatefulWidget{
  const ChillHall({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ChillHallState();
  }

}

class _ChillHallState extends State<ChillHall>{

  @override
  void initState() {
    super.initState();

    //setting up routing
    RouterHelper.setupRouter();

  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360,800),
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.APP_NAME,
          initialRoute: Routes.loginScreen,
          onGenerateRoute: RouterHelper.router.generator,
          theme: DarkTheme.buildAppDarkTheme(),
        );
      },

    );
  }

}