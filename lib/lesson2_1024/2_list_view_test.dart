import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewTest extends StatefulWidget {
  const ListViewTest({super.key});

  @override
  State<ListViewTest> createState() => _ListViewTestState();
}

class _ListViewTestState extends State<ListViewTest> {
  dynamic myData;
  // ehlesen

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: listViewBuilder());
  }

  Widget verticalListView() {
    List<int> numbers = List.generate(10, (index) => index);

    return ListView(
      // can reverse
      // reverse: true,
      children: [
        Container(
          color: Colors.green,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Text(
            "green box",
          ),
        ),
        for (var number in numbers)
          Builder(builder: (context) {
            var nowNumber = number * 10;
            return Container(
              color: Colors.orange,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Text(
                "number ${getNumber(number)}",
              ),
            );
          })
      ],
    );
  }

  int getNumber(int i) {
    return i * i;
  }

  Widget horizontalListView() {
    List<int> numbers = List.generate(10, (index) => index);
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        // stop scrolling
        physics: NeverScrollableScrollPhysics(),
        children: [
          for (var number in numbers)
            Container(
              height: 30,
              color: Colors.orange,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Text(
                "$number",
                softWrap: true,
              ),
            )
        ],
      ),
    );
  }

  Widget listViewBuilder() {
    List<int> numbers = List.generate(30, (index) => index);
    return ListView.builder(
      itemCount: numbers.length,
      itemBuilder: (context, int index) {
        return InkWell(
          onTap: () {
            Navigator.pop(context, "Buyka said yes");
          },
          child: Container(
            color: Colors.green,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Text(
              "number ${numbers[index]}",
            ),
          ),
        );
      },
    );
  }
}
