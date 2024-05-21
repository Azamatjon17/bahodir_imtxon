import 'package:examui/models/product.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  islikefalse() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      child: Wrap(
        runSpacing: 10,
        spacing: 10,
        children: [for (int i = 0; i < SingleProducts.products.length; i++) SingleProducts.products[i].islike ? Container(decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)), width: MediaQuery.of(context).size.width / 2 - 40, child: MostInterested(SingleProducts.products[i], islikefalse)) : Text("")],
      ),
    );
  }
}

class MostInterested extends StatelessWidget {
  Function() setstate;
  SingleProduct product;
  MostInterested(this.product, this.setstate, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Stack(children: [
        Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.symmetric(horizontal: 19),
            width: 156,
            height: 160,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                product.image,
              ),
              fit: BoxFit.contain,
            )),
            child: IconButton(
              onPressed: () {
                product.islike = false;
                setstate();
              },
              icon: product.islike
                  ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : Icon(Icons.favorite_border),
            )),
      ]),
      Padding(
        padding: EdgeInsets.only(left: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  product.type,
                  style: const TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          "\$${product.price}",
          style: const TextStyle(
            color: Color(0xFFf2a666),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ]);
  }
}
