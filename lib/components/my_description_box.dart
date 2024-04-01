import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyles =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecundaryTextStyles =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Theme.of(context).colorScheme.secondary)),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "\$0.99",
                style: myPrimaryTextStyles,
              ),
              Text("Delivery fee", style: mySecundaryTextStyles),
            ],
          ),
          Column(
            children: [
              Text("15-30 min", style: myPrimaryTextStyles),
              Text("Delivery time", style: mySecundaryTextStyles),
            ],
          )
        ],
      ),
    );
  }
}
