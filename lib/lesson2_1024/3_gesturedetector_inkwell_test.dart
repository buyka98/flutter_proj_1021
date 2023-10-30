import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_proj_1021/lesson1_1021/home_screen.dart';

class GestureDetectorInkwellTest extends StatefulWidget {
  const GestureDetectorInkwellTest({super.key});

  @override
  State<GestureDetectorInkwellTest> createState() => _GestureDetectorInkwellTestState();
}

class _GestureDetectorInkwellTestState extends State<GestureDetectorInkwellTest> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: GestureDetector(
            onTap: () {
              print("gesture detector");
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            },
            child: container("GestureDetector"),
          )),
          SizedBox(width: 20),
          Expanded(
              child: InkWell(
                  onTap: () {
                    print("inkwell");
                  },
                  // inkwell buh widget-n gaduur hureelehed ripple effect haruuldag baisan bolovch
                  // container deer ripple effect ni ajillahaa bolison baina
                  child: Icon(Icons.add)
                  // child: container("inkwell")
                  )),
        ],
      ),
    );
  }

  Widget container(String title) {
    return Container(
      height: 100,
      decoration: BoxDecoration(color: Colors.amberAccent),
      child: Center(
        child: Text(title),
      ),
    );
  }

  Widget inkWidget() {
    return Ink(
      height: 100,
      decoration: BoxDecoration(color: Colors.amberAccent),
      child: Center(
        child: Text("inkwell"),
      ),
    );
  }
}
