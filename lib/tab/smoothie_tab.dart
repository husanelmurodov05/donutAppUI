import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

class SmoothieTab extends StatelessWidget {
  // list of donuts
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Ice Cream", "36", Colors.blue, "lib/images/drinik.jpg"],
    ["Strawberry", "45", Colors.red, "lib/images/drinik.jpg"],
    ["Grape Ape", "84", Colors.purple, "lib/images/drinik.jpg"],
    ["Choco", "95", Colors.brown, "lib/images/drinik.jpg"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.55,
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
