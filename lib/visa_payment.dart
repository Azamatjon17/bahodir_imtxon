import 'package:examui/class/buttons..dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class VisaPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        title: const Text(
          "Payment",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(25),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF126d86),
                    Color(0xFF275676),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Mansurul hoque",
                        style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      Container(
                        width: 40,
                        height: 25,
                        child: Image.asset(
                          "images/cards/master1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  const Text("4562   1122   4595   7852",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      )),
                  const Row(
                    children: [
                      Column(
                        children: [
                          Text("Exp Date",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              )),
                          Text("16/23",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                      Gap(20),
                      Column(
                        children: [
                          Text("CVC Number",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              )),
                          Text("962",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ))
                        ],
                      ),
                      Gap(130),
                      Expanded(
                        child: Text("Mastercard",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
            Gap(20),
            const Text("Choose Payment Method",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                )),
            Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 80,
                    height: 50,
                    child: Image.asset(
                      "images/cards/mastercard.png",
                      fit: BoxFit.cover,
                    )),
                Container(
                    width: 80,
                    height: 50,
                    child: Image.asset(
                      "images/cards/pp.png",
                      fit: BoxFit.contain,
                    )),
                Container(
                    width: 80,
                    height: 50,
                    child: Image.asset(
                      "images/cards/apple.png",
                      fit: BoxFit.contain,
                    )),
                Container(
                    width: 80,
                    height: 50,
                    child: Text(
                      "...",
                      style: TextStyle(fontSize: 40),
                    ))
              ],
            ),
            Gap(40),
            const Text("Promo Code",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                )),
            Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Promo code",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    )),
                SizedBox(height: 40, width: 100, child: ImortantButtons("Apply", () {}))
              ],
            ),
            Spacer(),
            Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      const  Text("Totalpayment",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            )),
                        Text(
                          "\$84.680",
                          style: TextStyle(fontSize: 20, color: Colors.yellow.shade900, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Gap(35),
                    ImortantButtons("payment", () {})
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
