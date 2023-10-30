import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_proj_1021/lesson1_1021/home_screen.dart';
import 'package:go_router/go_router.dart';

class NavigationTest extends StatefulWidget {
  const NavigationTest({super.key});

  @override
  State<NavigationTest> createState() => _NavigationTestState();
}

class _NavigationTestState extends State<NavigationTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              // usingNavigator();
              usingNamedRoutes();
            },
            child: Ink(
              height: 100,
              width: 100,
              decoration: BoxDecoration(color: Colors.amberAccent),
              child: Center(
                child: Text("inkwell"),
              ),
            )),
      ),
    );
  }

  // 1. Using navigator
  void usingNavigator() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  // 2. Using named routes
  // ./main_named_route.dart-г main.dart-н оронд replace хийх
  void usingNamedRoutes() async {
    var result = await Navigator.of(context).pushNamed("/list_view_test", arguments: {
      "data": 1,
    });
    print("hello $result");
  }

  // 3. Using named routes
  // go_router_test project дээр байгаа
}
