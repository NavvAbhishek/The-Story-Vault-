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
          child: Row(
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
        ),
      ),
    );
  }
}
