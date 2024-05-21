import 'package:examui/after_logged.dart';
import 'package:examui/class/buttons..dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class Delivery extends StatefulWidget {
  const Delivery({super.key});

  @override
  State<Delivery> createState() {
    return _Delivery();
  }
}

class _Delivery extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      body: Expanded(
        child: Stack(
          children: [
            Align(
                alignment: const Alignment(0, -1),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 1.7,
                  width: double.infinity,
                  child: Image.asset(
                    "images/map.png",
                    fit: BoxFit.cover,
                  ),
                )),
            Positioned(
              top: 40,
              child: Row(
                children: [
                  const Gap(20),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  Gap(100),
                  Text(
                    "Track Order",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Align(
                alignment: const Alignment(0, 1),
                child: Container(
                  padding: const EdgeInsets.all(30),
                  height: MediaQuery.of(context).size.height / 2,
                  width: double.infinity,
                  decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)), color: Color(0xffFFFFFF)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                clipBehavior: Clip.hardEdge,
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(shape: BoxShape.circle),
                                child: Image.asset(
                                  "images/person3.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Gap(10),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Mansurul",
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xff101817)),
                                  ),
                                  Gap(5),
                                  Text(
                                    "Drive - AD 4856 AUE",
                                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff828A89)),
                                  )
                                ],
                              )
                            ],
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xff0C8A7B)),
                            child: const Icon(
                              Icons.call,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xffF0F0F2)),
                            child: const Icon(
                              CupertinoIcons.clock_fill,
                              color: Colors.black,
                              size: 35,
                            ),
                          ),
                          const Gap(20),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Garmanian Cuisine",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xff101817)),
                              ),
                              Gap(5),
                              Text(
                                "Houseing State  |  16:40",
                                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff828A89)),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xffF0F0F2)),
                            child: const Icon(
                              CupertinoIcons.location_solid,
                              color: Colors.black,
                              size: 35,
                            ),
                          ),
                          const Gap(20),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "East 58th Street, BDT",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xff101817)),
                              ),
                              Gap(5),
                              Text(
                                "House  |  18:08",
                                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff828A89)),
                              )
                            ],
                          )
                        ],
                      ),
                      ImortantButtons("Order Received", () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => AfterLogged()));
                      })
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
