import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  final int? number;
  const HomeScreen({super.key, this.number});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.photo), label: "gallery"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "user")
        ],
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: SafeArea(
        child: Column(children: [
          // app bar
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Image.asset("assets/logo/logo_1.png"),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Node',
                            style: TextStyle(
                              color: Color(0xFF22262E),
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.08,
                            ),
                          ),
                          TextSpan(
                            text: '.',
                            style: TextStyle(
                              color: Color(0xFFF67051),
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0.08,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
              Icon(Icons.menu),
            ],
          ),
          SizedBox(height: 30),

          Expanded(
              child: SingleChildScrollView(
            child: [
              Column(
                children: [
                  // Best Sellers
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Best sellers',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF22262E),
                          fontSize: 32,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                          height: 1.04,
                          letterSpacing: -0.32,
                        ),
                      ),
                      SizedBox(height: 20),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (int i = 0; i < 3; i++)
                              Row(
                                children: [
                                  Image.asset("assets/avatars/avatar_1.png"),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jailyn Crona',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF22262E),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          height: 1.12,
                                        ),
                                      ),
                                      Text(
                                        '\$23,102.27',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF777E90),
                                          fontSize: 12,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                          height: 1.14,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 50),
                                ],
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                  // Best Sellers bottom
                  SizedBox(height: 30),
                  Image.asset("assets/images/home_img_1.png")
                ],
              ),
              Container(
                decoration: BoxDecoration(color: Colors.amberAccent),
                child: Text("gallery screen"),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.green),
                child: Text("user screen"),
              ),
            ][selectedIndex],
          ))
        ]),
      ),
    );
  }
}
