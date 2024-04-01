import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddeliveryapp/models/food_model.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  const FoodPage({super.key, required this.food});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(35.0),
                  bottomRight: Radius.circular(35.0)),
              child: Image.asset(
                widget.food.imagePath,
                fit: BoxFit.cover,
                height: 340,
                width: double.infinity,
              )),
          //name
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
            child: Text(
              widget.food.name,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          //description
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
            child: Text(
              widget.food.description,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 12,
                  fontWeight: FontWeight.normal),
            ),
          ),
          //avaialable
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(20),
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: widget.food.availableAddons.length,
                itemBuilder: (context, index) {
                  final addon = widget.food.availableAddons[index];
                  return CheckboxListTile(
                      title: Text(
                        addon.name,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("\$${addon.price.toString()}",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold)),
                      value: false,
                      onChanged: (value) {});
                }),
          )
        ],
      ),
    );
  }
}
