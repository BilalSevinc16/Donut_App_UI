import 'package:donut_app_ui/util/donut_tile.dart';
import 'package:flutter/material.dart';


class DonutTab extends StatelessWidget {
  // list of donuts
  final List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Ice Cream", "36", Colors.blue, "images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "images/chocolate_donut.png"],
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
