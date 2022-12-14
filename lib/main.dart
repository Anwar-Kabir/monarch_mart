import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:go_router/go_router.dart';
import 'package:monarch_mart/common/app_dep_inj.dart';
import 'package:monarch_mart/view/splash_screen.dart';
import 'package:nb_utils/nb_utils.dart';

import 'common/route_pages.dart';

void main() {
  /// this is for disable landscape orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  /// this is for  status bar color changing
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,

      /// transparent status bar
      statusBarIconBrightness: Brightness.dark

      /// dark text for status bar
      ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: ((context, child) => GetMaterialApp(
            debugShowCheckedModeBanner: forceEnableDebug,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const SplashScreen(),
          )),
    );
  }
}
