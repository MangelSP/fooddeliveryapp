import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Your location"),
              content: const TextField(
                decoration: InputDecoration(hintText: "Search address.."),
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      color: Colors.red,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Cancel",
                          style: TextStyle(color: Colors.white)),
                    ),
                    MaterialButton(
                      color: Colors.blueAccent.shade400,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Saved",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver Now",
            style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Text(
                  "6901 Hollywood Blv",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold),
                ),
                const Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
          )
        ],
      ),
    );
  }
}
