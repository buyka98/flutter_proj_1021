import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_proj_1021/firebase_options.dart';
import 'package:flutter_proj_1021/lesson1_1021/home_screen.dart';
import 'package:flutter_proj_1021/lesson2_1024/3_gesturedetector_inkwell_test.dart';
import 'package:flutter_proj_1021/lesson2_1024/2_list_view_test.dart';
import 'package:flutter_proj_1021/lesson2_1024/1_main_axis_size_test.dart';
import 'package:flutter_proj_1021/lesson1_1021/home_screen_angid.dart';
import 'package:flutter_proj_1021/lesson2_1024/4_2_tabs_test.dart';
import 'package:flutter_proj_1021/lesson2_1024/4_3_tabs_test.dart';
import 'package:flutter_proj_1021/lesson2_1024/5_bottom_nav_bar_test.dart';
import 'package:flutter_proj_1021/lesson2_1024/navigation_test.dart';
import 'package:flutter_proj_1021/lesson2_1024/4_1_tabs_test.dart';
import 'package:flutter_proj_1021/lesson4_1031/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // routes: {
      //   '/': (context) => HomeScreen(),
      //   '/list_view_test': (context) => ListViewTest(),
      // },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // initialRoute: "/",
      home: SplashScreen(),
    );
  }
}
