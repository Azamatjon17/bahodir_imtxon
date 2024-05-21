import 'package:examui/class/buttons..dart';
import 'package:examui/pages/cards.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  bool isChecked = false;
  bool isPressed = false;
  bool isCheckeds = false;
  bool isCheckedapple = false;
  bool isCheckedpp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        title: const Text(
          "Checkout",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Shipping To",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Transform.scale(
                            scale: 1.4,
                            child: Checkbox(
                              activeColor: Color(0xff0C8A7B),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                  // isChecked ? check
                                });
                              },
                            ),
                          ),
                          Gap(10),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Home address",
                                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                              ),
                              Text(
                                "(269) 444-6853",
                                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xff828A89)),
                              ),
                              Text(
                                "Road Number 5649 Akali",
                                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xff828A89)),
                              ),
                            ],
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Container(
                            width: 30,
                            height: 30,
                            child: Image.asset(
                              "images/cards/edit.png",
                              fit: BoxFit.cover,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Transform.scale(
                            scale: 1.4,
                            child: Checkbox(
                              activeColor: Color(0xff0C8A7B),
                              value: isPressed,
                              onChanged: (bool? value) {
                                setState(() {
                                  isPressed = value!;

                                  // isChecked ? check
                                });
                              },
                            ),
                          ),
                          Gap(10),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Home address",
                                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                              ),
                              Text(
                                "(269) 444-6853",
                                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xff828A89)),
                              ),
                              Text(
                                "Road Number 5649 Akali",
                                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xff828A89)),
                              ),
                            ],
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Container(
                            width: 30,
                            height: 30,
                            child: Image.asset(
                              "images/cards/edit.png",
                              fit: BoxFit.cover,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              const Text("Payment Method",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )),
              Gap(
                10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(color: Color(0xffF0F0F2), borderRadius: BorderRadius.circular(10)),
                        width: 60,
                        height: 60,
                        child: Image.asset(
                          "images/cards/master1.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Gap(20),
                      Text(
                        "Credit Card",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Transform.scale(
                    scale: 1.4,
                    child: Checkbox(
                      activeColor: Color(0xff0C8A7B),
                      value: isCheckeds,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheckeds = value!;
                          // isChecked ? check
                        });
                      },
                    ),
                  ),
                ],
              ),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(color: Color(0xffF0F0F2), borderRadius: BorderRadius.circular(10)),
                        width: 60,
                        height: 60,
                        child: Image.asset(
                          "images/cards/pp.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Gap(20),
                      Text(
                        "Paypal",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Transform.scale(
                    scale: 1.4,
                    child: Checkbox(
                      activeColor: Color(0xff0C8A7B),
                      value: isCheckedpp,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheckedpp = value!;
                          // isChecked ? check
                        });
                      },
                    ),
                  ),
                ],
              ),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(color: Color(0xffF0F0F2), borderRadius: BorderRadius.circular(10)),
                        width: 60,
                        height: 60,
                        child: Image.asset(
                          "images/cards/apple.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Gap(20),
                      Text(
                        "Apple Pay",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Transform.scale(
                    scale: 1.4,
                    child: Checkbox(
                      activeColor: Color(0xff0C8A7B),
                      value: isCheckedapple,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheckedapple = value!;
                          // isChecked ? check
                        });
                      },
                    ),
                  ),
                ],
              ),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(color: Color(0xffF0F0F2), borderRadius: BorderRadius.circular(10)),
                        width: 60,
                        height: 60,
                        child: Image.asset(
                          "images/cards/dots.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Gap(20),
                      Text(
                        "All 12 Methods",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_rounded))
                ],
              ),
              Gap(20),
              Container(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Order Summary",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          )),
                      Gap(10),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Item Total", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xff828A89))),
                          Text(
                            "\$84.680",
                            style: TextStyle(fontSize: 18, color: Color(0xffF2A666), fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Gap(9),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery Fee", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xff828A89))),
                          Text(
                            "\$18.680",
                            style: TextStyle(fontSize: 18, color: Color(0xffF2A666), fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Divider(
                        indent: 1,
                      ),
                      Gap(10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Total",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              )),
                          Text(
                            "\$84.680",
                            style: TextStyle(fontSize: 20, color: Color(0xffF2A666), fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Gap(10),
                      ImortantButtons("Payment", () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => SuccessPay(),
                        );
                      })
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
