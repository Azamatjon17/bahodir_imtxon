import 'package:examui/after_logged.dart';
import 'package:examui/class/buttons..dart';
import 'package:examui/class/delivery.dart';
import 'package:examui/models/product.dart';
import 'package:examui/pages/checkout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9F9F9),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AfterLogged()));
            },
            icon: Icon(
              Icons.arrow_left,
            )),
        title: const Text(
          "Shopping",
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {
                SingleProducts.card.clear();
                setState(() {});
              },
              icon: Icon(Icons.delete))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  for (int i = 0; i < SingleProducts.card.length; i++)
                    Column(
                      children: [CardWidget(SingleProducts.card[i]), const Gap(15)],
                    )
                ],
              ),
            ),
          ),
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
                      Text("Subtotal", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xff828A89))),
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
                      Text("Subtotal", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xff828A89))),
                      Text(
                        "\$84.680",
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
                      const Text("Totalpayment",
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
                  ImortantButtons("Check Out", () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Checkout(),
                    );
                  })
                ],
              ))
        ],
      ),
    );
  }
}

class SuccessPay extends StatelessWidget {
  const SuccessPay({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1.1,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
            decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xff0C8A7B)),
                    child: const Icon(
                      Icons.done,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Text(
                    "Thank You For Your Order",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                ),
                Gap(10),
                Text(
                  "Your Order Been Place Successfully! You Can Track The Delivery In The Srder section",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff828A89)),
                ),
                Gap(30),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      backgroundColor: WidgetStateProperty.all<Color>(Color(0xFFF0F0F2)),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => AfterLogged()));
                    },
                    child: Text(
                      "Back Home",
                      style: const TextStyle(color: Color(0xff828A89)),
                    ),
                  ),
                ),
                Gap(22),
                ImortantButtons("Track Your Order", () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) => Delivery()));
                }),
                Gap(30),
                Text("You Can Order Somethings Also",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    )),
                Gap(22),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardWidget extends StatefulWidget {
  SingleProduct card;
  CardWidget(this.card, {super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  late int count;
  @override
  void initState() {
    count = widget.card.itemcount;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 72,
                width: 72,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color(0xffF0F0F2)),
                child: Image.asset(
                  widget.card.image,
                  fit: BoxFit.contain,
                ),
              ),
              const Gap(20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.card.name,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    widget.card.type,
                    style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff828A89)),
                  ),
                  const Gap(5),
                  Text(
                    "\$${widget.card.price}",
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xffF2A666)),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  shape: const WidgetStatePropertyAll(CircleBorder(side: BorderSide.none)),
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.grey.shade300),
                ),
                onPressed: () {
                  setState(() {
                    if (count >= 1) {
                      count--;
                    }
                  });
                },
                child: const Text(
                  "-",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Text('$count'),
              ElevatedButton(
                style: ButtonStyle(
                  shape: const WidgetStatePropertyAll(CircleBorder(side: BorderSide.none)),
                  backgroundColor: WidgetStateProperty.all<Color>(const Color(0xFF0c8a7b)),
                ),
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: const Text(
                  "+",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    ;
  }
}
