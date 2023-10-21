import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(children: [
            // app bar
            Container(
              child: Row(
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
            ),
            SizedBox(height: 30),
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
            SizedBox(height: 30),
            Image.asset("assets/images/home_background.png")
          ]),
        ),
      ),
    );
  }
}
