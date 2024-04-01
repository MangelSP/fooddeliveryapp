import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddeliveryapp/models/food_model.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const MyFoodTile({super.key, required this.food, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      food.name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('\$${food.price}',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(food.description,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: TextStyle(
                            color:
                                Theme.of(context).colorScheme.inversePrimary)),
                  ],
                )), //food image
                const SizedBox(
                  width: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    food.imagePath,
                    height: 120,
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          indent: 25,
          endIndent: 25,
          color: Theme.of(context).colorScheme.primary,
        )
      ],
    );
  }
}
