import 'package:flutter/material.dart';

class TabsTest3 extends StatefulWidget {
  const TabsTest3({super.key});

  @override
  State<TabsTest3> createState() => _TabsTest3State();
}

// SingleTickerProviderStateMixin will create 1 animationController
// TickerProviderStateMixin will create multiple animationController
class _TabsTest3State extends State<TabsTest3> with TickerProviderStateMixin {
  late TabController controller;
  late AnimationController animationController;
  late ScrollController scrollController;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tab Test 3"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          controller.index = 0;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: EdgeInsets.symmetric(vertical: 10),
                        color: controller.index == 0 ? Colors.amberAccent : null,
                        child: Icon(Icons.directions_car),
                      ))),
              Expanded(
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          controller.index = 1;
                        });
                      },
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          color: controller.index == 1 ? Colors.amberAccent : null,
                          child: Icon(Icons.directions_transit)))),
              Expanded(
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          controller.index = 2;
                        });
                      },
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          color: controller.index == 2 ? Colors.amberAccent : null,
                          child: Icon(Icons.directions_bike)))),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: [
                Icon(Icons.directions_car),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
            ),
          )
        ],
      ),
    );
  }
}
