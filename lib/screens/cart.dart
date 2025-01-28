import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff023047),
                        size: 32,
                      )),
                  Expanded(
                    child: Text(
                      "My Cart",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff023047),
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 32),
                ],
              ),
              SizedBox(height: 40),
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xff023047),
                        borderRadius: BorderRadius.circular(14)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15, left: 15, right: 15, bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/five-things.png',
                            width: 90,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Five Things About\nAva Andrews",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(
                                      0xffFFB703), // Adjust color as per your design
                                ),
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: List.generate(
                                            4,
                                            (index) => Icon(
                                                  Icons.star,
                                                  color: Color(0xffFFB703),
                                                  size: 21,
                                                )),
                                      ),
                                      Text(
                                        "Rs. 2500",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Color(
                                              0xffFFB703), // Adjust color as per your design
                                        ),
                                      ),
                                      Text(
                                        "Free shipping",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(
                                              0xffFFB703), // Adjust color as per your design
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(width: 110),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.delete,
                                              color: Color(0xffFFB703),
                                              size: 30,
                                            ))
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
