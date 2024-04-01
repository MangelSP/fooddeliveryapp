import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/cart_item_model.dart';
import 'package:fooddeliveryapp/models/food_model.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // Burgers
    Food(
      name: "Classic Cheeseburger",
      category: FoodCategory.burges,
      description:
          "A classic cheeseburger consists of a juicy beef patty with a slice of melted cheese, served between two soft and toasted buns, accompanied by crisp lettuce, ripe tomato slices, finely chopped onion, sliced pickles, and condiments such as ketchup, mustard, mayonnaise, or a special sauce, creating a delicious combination of flavors and textures.",
      imagePath: "lib/image/burgers/classic-cheeseburgers.jpg",
      price: 8.99,
      availableAddons: [
        Addon(name: "Avocado", price: 2.99),
        Addon(name: "Extra cheese", price: 1.99),
        Addon(name: "Bacon", price: 0.99),
      ],
    ),
    // More burgers...
    Food(
      name: "Double Bacon Cheeseburger",
      category: FoodCategory.burges,
      description:
          "A double bacon cheeseburger features two juicy beef patties layered with crispy bacon strips and melted cheese, served on a toasted bun with fresh lettuce, tomato, onion, and condiments, offering a hearty and indulgent meal for burger enthusiasts.",
      imagePath: "lib/image/burgers/classic-cheeseburgers.jpg",
      price: 10.99,
      availableAddons: [
        Addon(name: "Fried Egg", price: 1.99),
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapenos", price: 0.49),
        Addon(name: "Fried Egg", price: 1.99),
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapenos", price: 0.49),
      ],
    ),
    // More burgers...
    Food(
      name: "Mushroom Swiss Burger",
      category: FoodCategory.burges,
      description:
          "A mushroom Swiss burger features a juicy beef patty topped with sautéed mushrooms and melted Swiss cheese, served on a toasted bun with lettuce, tomato, onion, and a savory sauce, providing a delicious twist on the classic cheeseburger.",
      imagePath: "lib/image/burgers/classic-cheeseburgers.jpg",
      price: 9.49,
      availableAddons: [
        Addon(name: "Truffle Aioli", price: 2.49),
        Addon(name: "Caramelized Onions", price: 1.99),
        Addon(name: "Balsamic Glaze", price: 1.49),
      ],
    ),
    // More burgers...
    Food(
      name: "BBQ Bacon Burger",
      category: FoodCategory.burges,
      description:
          "A BBQ bacon burger features a juicy beef patty topped with crispy bacon, melted cheddar cheese, tangy barbecue sauce, and crispy onion rings, served on a toasted bun with lettuce and tomato, offering a mouthwatering blend of sweet and savory flavors.",
      imagePath: "lib/image/burgers/classic-cheeseburgers.jpg",
      price: 9.99,
      availableAddons: [
        Addon(name: "Pulled Pork", price: 3.99),
        Addon(name: "Coleslaw", price: 1.49),
        Addon(name: "Pickled Jalapenos", price: 0.99),
      ],
    ),
    // More burgers...
    Food(
      name: "Veggie Burger",
      category: FoodCategory.burges,
      description:
          "A veggie burger features a plant-based patty made from vegetables, grains, and legumes, served on a whole wheat bun with lettuce, tomato, onion, and your choice of condiments, providing a nutritious and flavorful option for vegetarians and vegans.",
      imagePath: "lib/image/burgers/classic-cheeseburgers.jpg",
      price: 7.99,
      availableAddons: [
        Addon(name: "Guacamole", price: 1.99),
        Addon(name: "Roasted Red Peppers", price: 1.49),
        Addon(name: "Hummus", price: 0.99),
      ],
    ),

    // Salads
    Food(
      name: "Caesar Salad",
      category: FoodCategory.salads,
      description:
          "A Caesar salad is a crisp romaine lettuce salad tossed with croutons, Parmesan cheese, and a tangy Caesar dressing, creating a refreshing and flavorful dish perfect as a starter or a light meal.",
      imagePath: "lib/image/salads/Italian-Salad.webp",
      price: 7.49,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 3.99),
        Addon(name: "Shrimp", price: 4.99),
        Addon(name: "Salmon", price: 5.99),
      ],
    ),
    // More salads...
    Food(
      name: "Greek Salad",
      category: FoodCategory.salads,
      description:
          "A Greek salad features crisp lettuce, juicy tomatoes, cucumbers, red onions, bell peppers, Kalamata olives, and feta cheese, tossed in a Greek vinaigrette dressing, offering a refreshing and colorful dish inspired by Mediterranean flavors.",
      imagePath: "lib/image/salads/Italian-Salad.webp",
      price: 8.99,
      availableAddons: [
        Addon(name: "Grilled Lamb", price: 4.99),
        Addon(name: "Artichoke Hearts", price: 2.49),
        Addon(name: "Pepperoncini", price: 0.99),
      ],
    ),
    // More salads...
    Food(
      name: "Caprese Salad",
      category: FoodCategory.salads,
      description:
          "A Caprese salad features ripe tomatoes, fresh mozzarella cheese, and basil leaves, drizzled with balsamic glaze and extra virgin olive oil, offering a simple yet elegant dish that highlights the flavors of Italy.",
      imagePath: "lib/image/salads/Italian-Salad.webp",
      price: 9.99,
      availableAddons: [
        Addon(name: "Prosciutto", price: 3.99),
        Addon(name: "Balsamic Reduction", price: 1.99),
        Addon(name: "Pine Nuts", price: 0.99),
      ],
    ),
    // More salads...
    Food(
      name: "Cobb Salad",
      category: FoodCategory.salads,
      description:
          "A Cobb salad features mixed greens topped with grilled chicken, crispy bacon, hard-boiled eggs, avocado, tomatoes, blue cheese crumbles, and a creamy ranch dressing, offering a hearty and satisfying meal.",
      imagePath: "lib/image/salads/Italian-Salad.webp",
      price: 10.49,
      availableAddons: [
        Addon(name: "Grilled Steak", price: 5.99),
        Addon(name: "Corn", price: 1.49),
        Addon(name: "Black Beans", price: 0.99),
      ],
    ),
    // More salads...
    Food(
      name: "Spinach Salad",
      category: FoodCategory.salads,
      description:
          "A spinach salad features fresh spinach leaves topped with sliced strawberries, goat cheese, candied pecans, and a balsamic vinaigrette dressing, offering a nutritious and flavorful dish bursting with sweet and tangy flavors.",
      imagePath: "lib/image/salads/Italian-Salad.webp",
      price: 8.49,
      availableAddons: [
        Addon(name: "Grilled Salmon", price: 6.99),
        Addon(name: "Mandarin Oranges", price: 1.99),
        Addon(name: "Red Onion Marmalade", price: 1.49),
      ],
    ),

    // Sides
    Food(
      name: "French Fries",
      category: FoodCategory.sides,
      description:
          "French fries are thinly cut and deep-fried potatoes seasoned with salt, offering a crispy and savory side dish that perfectly complements any burger or sandwich.",
      imagePath: "lib/image/sides/delish-portrait.jpg",
      price: 3.49,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 1.99),
        Addon(name: "Chili", price: 2.49),
        Addon(name: "Truffle Oil", price: 3.99),
      ],
    ),
    // More sides...
    Food(
      name: "Onion Rings",
      category: FoodCategory.sides,
      description:
          "Onion rings are thickly sliced onions coated in a seasoned batter and deep-fried until golden and crispy, offering a delicious and satisfying side dish or snack.",
      imagePath: "lib/image/sides/delish-portrait.jpg",
      price: 4.49,
      availableAddons: [
        Addon(name: "Chipotle Aioli", price: 1.99),
        Addon(name: "Buffalo Sauce", price: 1.49),
        Addon(name: "Ranch Dip", price: 0.99),
      ],
    ),
    // More sides...
    Food(
      name: "Garlic Parmesan Fries",
      category: FoodCategory.sides,
      description:
          "Garlic Parmesan fries are crispy French fries tossed in a garlic butter sauce and grated Parmesan cheese, offering a flavorful and indulgent twist on the classic side dish.",
      imagePath: "lib/image/sides/delish-portrait.jpg",
      price: 4.99,
      availableAddons: [
        Addon(name: "Truffle Aioli", price: 1.99),
        Addon(name: "Bacon Bits", price: 1.49),
        Addon(name: "Scallions", price: 0.99),
      ],
    ),
    // More sides...
    Food(
      name: "Sweet Potato Fries",
      category: FoodCategory.sides,
      description:
          "Sweet potato fries are thinly sliced sweet potatoes baked or fried until crispy and golden, offering a healthier alternative to traditional French fries with a naturally sweet flavor.",
      imagePath: "lib/image/sides/delish-portrait.jpg",
      price: 4.99,
      availableAddons: [
        Addon(name: "Maple Syrup", price: 1.99),
        Addon(name: "Cinnamon Sugar", price: 1.49),
        Addon(name: "Chipotle Mayo", price: 0.99),
      ],
    ),
    // More sides...
    Food(
      name: "Loaded Nachos",
      category: FoodCategory.sides,
      description:
          "Loaded nachos feature crispy tortilla chips topped with melted cheese, seasoned ground beef or chicken, diced tomatoes, sliced jalapenos, black olives, sour cream, and guacamole, offering a delicious and shareable appetizer or snack.",
      imagePath: "lib/image/sides/delish-portrait.jpg",
      price: 9.99,
      availableAddons: [
        Addon(name: "Refried Beans", price: 1.99),
        Addon(name: "Queso Blanco", price: 2.49),
        Addon(name: "Pico de Gallo", price: 0.99),
      ],
    ),

    // Desserts
    Food(
      name: "Chocolate Brownie Sundae",
      category: FoodCategory.desserts,
      description:
          "A chocolate brownie sundae is a decadent dessert featuring a warm, fudgy brownie topped with creamy vanilla ice cream, rich chocolate sauce, whipped cream, and a cherry on top, creating a heavenly sweet treat.",
      imagePath: "lib/image/desserts/bake-desserts-oreo.jpg",
      price: 6.99,
      availableAddons: [
        Addon(name: "Caramel Sauce", price: 1.99),
        Addon(name: "Chopped Nuts", price: 0.99),
        Addon(name: "Sprinkles", price: 0.49),
      ],
    ),
    // More desserts...
    Food(
      name: "New York Cheesecake",
      category: FoodCategory.desserts,
      description:
          "New York cheesecake is a rich and creamy dessert made with a smooth cream cheese filling on a graham cracker crust, topped with a sweet fruit compote or sauce, offering a luxurious treat for cheesecake lovers.",
      imagePath: "lib/image/desserts/bake-desserts-oreo.jpg",
      price: 8.49,
      availableAddons: [
        Addon(name: "Raspberry Sauce", price: 1.99),
        Addon(name: "Chocolate Shavings", price: 1.49),
        Addon(name: "Whipped Cream", price: 0.99),
      ],
    ),
    // More desserts...
    Food(
      name: "Apple Pie",
      category: FoodCategory.desserts,
      description:
          "Apple pie is a classic dessert featuring tender apples seasoned with cinnamon and sugar, baked in a flaky pie crust until golden brown and served warm with a scoop of vanilla ice cream, offering a comforting and nostalgic treat.",
      imagePath: "lib/image/desserts/bake-desserts-oreo.jpg",
      price: 7.99,
      availableAddons: [
        Addon(name: "Caramel Drizzle", price: 1.49),
        Addon(name: "Streusel Topping", price: 1.49),
        Addon(name: "Cinnamon Whipped Cream", price: 0.99),
      ],
    ),
    // More desserts...
    Food(
      name: "Chocolate Lava Cake",
      category: FoodCategory.desserts,
      description:
          "Chocolate lava cake is a decadent dessert featuring a rich and gooey chocolate cake with a molten chocolate center, served warm with a dusting of powdered sugar and a scoop of vanilla ice cream, offering a luxurious and indulgent treat.",
      imagePath: "lib/image/desserts/bake-desserts-oreo.jpg",
      price: 9.49,
      availableAddons: [
        Addon(name: "Raspberry Coulis", price: 1.99),
        Addon(name: "Toasted Hazelnuts", price: 1.49),
        Addon(name: "Coffee Ice Cream", price: 0.99),
      ],
    ),
    // More desserts...
    Food(
      name: "Tiramisu",
      category: FoodCategory.desserts,
      description:
          "Tiramisu is a classic Italian dessert featuring layers of espresso-soaked ladyfingers and mascarpone cheese, dusted with cocoa powder, offering a rich and creamy indulgence with a hint of coffee flavor.",
      imagePath: "lib/image/desserts/bake-desserts-oreo.jpg",
      price: 8.99,
      availableAddons: [
        Addon(name: "Amaretto Syrup", price: 1.99),
        Addon(name: "Chocolate Shavings", price: 1.49),
        Addon(name: "Espresso Beans", price: 0.99),
      ],
    ),

    // Drinks
    Food(
      name: "Classic Milkshake",
      category: FoodCategory.drinks,
      description:
          "A classic milkshake is a creamy and indulgent beverage made by blending milk, ice cream, and flavored syrups such as chocolate, vanilla, or strawberry, resulting in a thick and satisfying drink that's perfect for cooling down on a hot day.",
      imagePath: "lib/image/drinks/ice-tea.jpg",
      price: 4.99,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 0.99),
        Addon(name: "Cherry on Top", price: 0.49),
        Addon(name: "Malt Powder", price: 1.49),
      ],
    ),
    // More drinks...
    Food(
      name: "Iced Caramel Latte",
      category: FoodCategory.drinks,
      description:
          "An iced caramel latte is a refreshing coffee beverage made with espresso, milk, and caramel syrup, poured over ice and garnished with a drizzle of caramel sauce, offering a sweet and creamy pick-me-up for coffee lovers.",
      imagePath: "lib/image/drinks/ice-tea.jpg",
      price: 5.49,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 0.99),
        Addon(name: "Extra Shot of Espresso", price: 1.49),
        Addon(name: "Vanilla Syrup", price: 0.99),
      ],
    ),
    // More drinks...
    Food(
      name: "Freshly Squeezed Lemonade",
      category: FoodCategory.drinks,
      description:
          "Freshly squeezed lemonade is a tangy and refreshing beverage made with freshly squeezed lemon juice, water, and sugar, served over ice and garnished with a slice of lemon, offering a simple and thirst-quenching drink for hot summer days.",
      imagePath: "lib/image/drinks/ice-tea.jpg",
      price: 3.99,
      availableAddons: [
        Addon(name: "Mint Leaves", price: 0.49),
        Addon(name: "Strawberry Puree", price: 1.99),
        Addon(name: "Blueberry Syrup", price: 1.49),
      ],
    ),
    // More drinks...
    Food(
      name: "Mango Smoothie",
      category: FoodCategory.drinks,
      description:
          "A mango smoothie is a creamy and tropical beverage made with ripe mangoes, yogurt or coconut milk, and honey, blended until smooth and served chilled, offering a refreshing and nutritious treat.",
      imagePath: "lib/image/drinks/ice-tea.jpg",
      price: 4.99,
      availableAddons: [
        Addon(name: "Protein Powder", price: 2.49),
        Addon(name: "Chia Seeds", price: 1.49),
        Addon(name: "Coconut Flakes", price: 0.99),
      ],
    ),
    // More drinks...
    Food(
      name: "Iced Green Tea",
      category: FoodCategory.drinks,
      description:
          "Iced green tea is a refreshing and antioxidant-rich beverage made by steeping green tea leaves in cold water, served over ice and garnished with a slice of lemon or fresh mint leaves, offering a cool and healthy drink option.",
      imagePath: "lib/image/drinks/ice-tea.jpg",
      price: 3.49,
      availableAddons: [
        Addon(name: "Honey", price: 0.49),
        Addon(name: "Ginger Syrup", price: 1.99),
        Addon(name: "Peach Puree", price: 1.49),
      ],
    ),
  ];
  final List<CartItem> _cart = [];

/*GETTERS */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  /*OPERARTIONS*/

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if the is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if item food are the same
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise, add a new cart item

    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }
  //remove to cart

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      _cart[cartIndex].quantity--;
    } else {
      _cart.removeAt(cartIndex);
    }
    notifyListeners();
  }

  //get total price of cart

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }
  //clear cart

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }
  /**HELPERS */

  //generate a receipt

  //format double value into money
  //format list of addons into a string summary
}
