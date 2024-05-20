import 'package:examui/models/product.dart';
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
        title: const Text(
          "Shopping",
          style: TextStyle(fontSize: 25),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.delete))],
      ),
      body: SingleChildScrollView(
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
