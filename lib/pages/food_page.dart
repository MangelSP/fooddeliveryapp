import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fooddeliveryapp/components/my_button.dart';
import 'package:fooddeliveryapp/models/food_model.dart';
import 'package:fooddeliveryapp/models/restaurant_model.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  FoodPage({super.key, required this.food}) {
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    Navigator.pop(context);
    List<Addon> currentlySelectedAddons = [];

    for (Addon addon in widget.food.availableAddons) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Stack(
          children: [
            //scaffold ui
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    padding:
                        const EdgeInsets.only(left: 25, right: 25, top: 25),
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
                    padding:
                        const EdgeInsets.only(left: 25, right: 25, top: 10),
                    child: Text(
                      widget.food.description,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 12,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  //avaialable

                  const SizedBox(
                    height: 10,
                  ),
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      right: 25,
                    ),
                    child: Text(
                      "Add-ons",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondary)),
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: widget.food.availableAddons.length,
                          itemBuilder: (context, index) {
                            final addon = widget.food.availableAddons[index];
                            return CheckboxListTile(
                                title: Text(
                                  addon.name,
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .inversePrimary,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text("\$${addon.price.toString()}",
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontWeight: FontWeight.bold)),
                                value: widget.selectedAddons[addon],
                                onChanged: (bool? value) {
                                  setState(() {
                                    widget.selectedAddons[addon] = value!;
                                  });
                                });
                          }),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: MyButton(
                      text: "Add to cart",
                      onTap: () =>
                          addToCart(widget.food, widget.selectedAddons),
                    ),
                  )
                ],
              ),
            ),
            //back button
            SafeArea(
              child: Opacity(
                opacity: 0.8,
                child: Container(
                  margin: const EdgeInsets.only(left: 25, top: 10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.secondary),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios_rounded),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
