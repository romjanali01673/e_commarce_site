import 'package:flutter/material.dart';

class Itemtile extends StatelessWidget{

  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  final Function() ontap;

  const Itemtile({
    super.key,
    required this.imagePath,
    this.color,
    required this.itemName,
    required this.itemPrice,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color?[100]??Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Text("Price -$itemName"),
          Expanded(child: Image.asset(imagePath)),
          MaterialButton(
            onPressed: ontap,
            color: color?[200]??Colors.white,
            child: Text("$itemPrice \$"),
          )
        ],
      ),
    );
  }
}