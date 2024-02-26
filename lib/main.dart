import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tiktok_clone/login/view/login_screen.dart';
import 'package:tiktok_clone/constants/color_cnstants.dart';
import 'package:tiktok_clone/utilities/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      title: 'Tiktok Clone',
      home: const LoginScreen(),
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder = AppPageRouter().getPageRoute(settings);
        return MaterialPageRoute(builder: (ctx) {
          return builder(ctx);
        });
      },
    );
  }
}
