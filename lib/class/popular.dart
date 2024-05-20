import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Popular extends StatelessWidget {
  String image;
  String name;
  String type;
  String price;

  Popular(this.image, this.name, this.type, this.price, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Row(children: [
        Container(
          width: 100,
          height: 100,
          child: Image.asset(
            "images/afterlogin/$image.png",
            fit: BoxFit.cover,
          ),
        ),
        Gap(10),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Text(type, style: const TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  price,
                  style: const TextStyle(
                    color: Color(0xFFf2a666),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
