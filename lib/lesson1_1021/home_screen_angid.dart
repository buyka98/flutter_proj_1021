import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreenAngid extends StatelessWidget {
  const HomeScreenAngid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Padding(
      //     padding: const EdgeInsets.only(left: 20),
      //     child: Row(
      //       children: [
      //         Image.asset("assets/logo/logo_1.png"),
      //         const Text.rich(
      //           TextSpan(
      //             children: [
      //               TextSpan(
      //                 text: 'Node',
      //                 style: TextStyle(
      //                   color: Color(0xFF22262E),
      //                   fontSize: 20,
      //                   fontFamily: 'Poppins',
      //                   fontWeight: FontWeight.w600,
      //                   height: 1.08,
      //                 ),
      //               ),
      //               TextSpan(
      //                 text: '.',
      //                 style: TextStyle(
      //                   color: Color(0xFFF67051),
      //                   fontSize: 20,
      //                   fontFamily: 'Poppins',
      //                   fontWeight: FontWeight.w600,
      //                   height: 1.08,
      //                 ),
      //               ),
      //             ],
      //           ),
      //           textAlign: TextAlign.center,
      //         ),
      //       ],
      //     ),
      //   ),
      //   leadingWidth: 140,
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 20),
      //       child: Icon(Icons.menu),
      //     )
      //   ],
      // ),
      // appBar: AppBar(
      //   leading: Icon(Icons.arrow_back),
      //   title: Text("home screen"),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // appbar
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/logo/logo_1.png"),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Node',
                                style: TextStyle(
                                  color: Color(0xFF22262E),
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 1.08,
                                ),
                              ),
                              TextSpan(
                                text: '.',
                                style: TextStyle(
                                  color: Color(0xFFF67051),
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 1.08,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Icon(Icons.menu),
                  ],
                ),
              ),
              const Text(
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
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // person
                    for (var i = 0; i < 3; i++) person(name: "person person $i", worth: "worth$i"),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/home_img_1.png",
                        width: MediaQuery.of(context).size.width * 0.9,
                        fit: BoxFit.fitWidth,
                      )),
                  Container(
                    margin: EdgeInsets.only(right: 20, left: 20, top: 40),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 120,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Mind"),
                            Text("name"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("100"),
                            Text("\$100"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget person({required String name, required String worth}) {
    return SizedBox(
      width: 180,
      child: Row(
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(70), child: Image.asset("assets/avatars/avatar_1.png")),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name),
              Text(
                '$worth',
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
          ))
        ],
      ),
    );
  }
}
