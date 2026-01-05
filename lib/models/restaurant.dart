import 'package:collection/collection.dart';
import 'package:delivery_app_with_backend/models/addon.dart';
import 'package:delivery_app_with_backend/models/cart_item.dart';
import 'package:delivery_app_with_backend/models/food.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    //burguers
    Food(
      name: 'Cheeseburger',
      description:
          'A delicious cheeseburger with lettuce, tomato, and pickles.',
      imagePath: 'lib/images/lanches/lanche1.jpeg',
      price: 5.99,
      category: FoodCategory.burguer,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: 'Pickles', price: 0.49),
      ],
    ),
    Food(
      name: 'Double Bacon Burger',
      description:
          'A double patty burger with crispy bacon and cheddar cheese.',
      imagePath: 'lib/images/lanches/lanche2.jpeg',
      price: 7.99,
      category: FoodCategory.burguer,
      availableAddons: [
        Addon(name: 'Extra Bacon', price: 1.99),
        Addon(name: 'Onion Rings', price: 0.99),
      ],
    ),
    Food(
      name: 'Spicy Chicken Burger',
      description:
          'A crispy chicken burger with spicy mayo and jalapeños.',
      imagePath: 'lib/images/lanches/lanche3.jpeg',
      price: 6.49,
      category: FoodCategory.burguer,
      availableAddons: [
        Addon(name: 'Extra Jalapeños', price: 0.49),
        Addon(name: 'Cheddar Cheese', price: 0.99),
      ],
    ),
    Food(
      name: 'Mushroom Swiss Burger',
      description:
          'A beef burger topped with sautéed mushrooms and Swiss cheese.',
      imagePath: 'lib/images/lanches/lanche4.jpeg',
      price: 6.99,
      category: FoodCategory.burguer,
      availableAddons: [
        Addon(name: 'Extra Mushrooms', price: 0.99),
        Addon(name: 'Truffle Mayo', price: 1.49),
      ],
    ),
    Food(
      name: 'BBQ Burger',
      description:
          'A smoky BBQ burger with onion rings and BBQ sauce.',
      imagePath: 'lib/images/lanches/lanche5.jpeg',
      price: 6.99,
      category: FoodCategory.burguer,
      availableAddons: [
        Addon(name: 'Extra BBQ Sauce', price: 0.49),
        Addon(name: 'Coleslaw', price: 0.99),
      ],
    ),
    Food(
      name: 'Veggie Burger',
      description:
          'A plant-based burger with lettuce, tomato, and vegan mayo.',
      imagePath: 'lib/images/lanches/lanche6.jpeg',
      price: 5.99,
      category: FoodCategory.burguer,
      availableAddons: [
        Addon(name: 'Avocado', price: 1.29),
        Addon(name: 'Vegan Cheese', price: 0.99),
      ],
    ),
    Food(
      name: 'Hawaiian Burger',
      description:
          'A tropical burger with grilled pineapple and teriyaki sauce.',
      imagePath: 'lib/images/lanches/lanche7.jpeg',
      price: 6.49,
      category: FoodCategory.burguer,
      availableAddons: [
        Addon(name: 'Extra Pineapple', price: 0.99),
        Addon(name: 'Teriyaki Sauce', price: 0.49),
      ],
    ),
    Food(
      name: 'Classic Burger',
      description:
          'A simple and classic burger with ketchup and mustard.',
      imagePath: 'lib/images/lanches/lanche8.jpeg',
      price: 4.99,
      category: FoodCategory.burguer,
      availableAddons: [
        Addon(name: 'Extra Patty', price: 2.49),
        Addon(name: 'Cheese', price: 0.99),
      ],
    ),
    Food(
      name: 'Cheddar Bacon Burger',
      description:
          'A burger with crispy bacon and melted cheddar cheese.',
      imagePath: 'lib/images/lanches/lanche9.jpeg',
      price: 6.99,
      category: FoodCategory.burguer,
      availableAddons: [
        Addon(name: 'Extra Cheddar', price: 0.99),
        Addon(name: 'Grilled Onions', price: 0.49),
      ],
    ),
    Food(
      name: 'Truffle Burger',
      description:
          'A gourmet burger with truffle aioli and arugula.',
      imagePath: 'lib/images/lanches/lanche10.jpeg',
      price: 8.99,
      category: FoodCategory.burguer,
      availableAddons: [
        Addon(name: 'Extra Truffle Aioli', price: 1.49),
        Addon(name: 'Parmesan Cheese', price: 0.99),
      ],
    ),

    //saladas
    Food(
      name: 'Greek Salad',
      description:
          'A refreshing salad with cucumbers, tomatoes, olives, and feta cheese.',
      imagePath: 'lib/images/saladas/salada1.jpg',
      price: 5.99,
      category: FoodCategory.salad,
      availableAddons: [
        Addon(name: 'Extra Feta', price: 0.99),
        Addon(name: 'Olive Oil', price: 0.49),
      ],
    ),
    Food(
      name: 'Caesar Salad',
      description:
          'Crisp romaine lettuce with Caesar dressing and croutons.',
      imagePath: 'lib/images/saladas/salada2.jpg',
      price: 6.49,
      category: FoodCategory.salad,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 2.49),
        Addon(name: 'Parmesan Cheese', price: 0.99),
      ],
    ),
    Food(
      name: 'Fruit Salad',
      description: 'A mix of fresh seasonal fruits.',
      imagePath: 'lib/images/saladas/salada3.jpg',
      price: 4.49,
      category: FoodCategory.salad,
      availableAddons: [
        Addon(name: 'Honey Drizzle', price: 0.49),
        Addon(name: 'Yogurt', price: 0.99),
      ],
    ),

    //sobremesas
    Food(
      name: 'Chocolate Brownie',
      description: 'A rich and fudgy chocolate brownie.',
      imagePath: 'lib/images/sobremesa/sobremesa1.jpeg',
      price: 3.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Vanilla Ice Cream', price: 1.49),
        Addon(name: 'Chocolate Syrup', price: 0.49),
      ],
    ),
    Food(
      name: 'Apple Pie',
      description:
          'A classic apple pie with a flaky crust.',
      imagePath: 'lib/images/sobremesa/sobremesa2.jpg',
      price: 4.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Whipped Cream', price: 0.49),
        Addon(name: 'Caramel Sauce', price: 0.59),
      ],
    ),
    Food(
      name: 'Tiramisu',
      description:
          'An Italian dessert with layers of coffee-soaked ladyfingers and mascarpone.',
      imagePath: 'lib/images/sobremesa/sobremesa3.jpg',
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra Cocoa Powder', price: 0.29),
        Addon(name: 'Espresso Shot', price: 0.99),
      ],
    ),
    Food(
      name: 'Lemon Tart',
      description:
          'A tangy lemon tart with a buttery crust.',
      imagePath: 'lib/images/sobremesa/sobremesa4.jpg',
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Raspberry Sauce', price: 0.49),
        Addon(name: 'Whipped Cream', price: 0.49),
      ],
    ),
    Food(
      name: 'Panna Cotta',
      description:
          'A creamy Italian dessert served with berry compote.',
      imagePath: 'lib/images/sobremesa/sobremesa5.jpg',
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra Berry Compote', price: 0.99),
        Addon(name: 'Mint Leaves', price: 0.29),
      ],
    ),
    Food(
      name: 'Cheesecake',
      description:
          'A creamy cheesecake with a graham cracker crust.',
      imagePath: 'lib/images/sobremesa/sobremesa6.jpg',
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Strawberry Sauce', price: 0.49),
        Addon(name: 'Chocolate Chips', price: 0.59),
      ],
    ),
    Food(
      name: 'Banoffee Pie',
      description:
          'A sweet pie with bananas, cream, and toffee.',
      imagePath: 'lib/images/sobremesa/sobremesa7.jpeg',
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Extra Toffee', price: 0.99),
        Addon(name: 'Whipped Cream', price: 0.49),
      ],
    ),

    //drinks
    Food(
      name: 'Coca-Cola',
      description: 'A refreshing classic Coca-Cola.',
      imagePath: 'lib/images/sucos/suco1.jpeg',
      price: 1.99,
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: 'Ice Cubes', price: 0.19),
        Addon(name: 'Lemon Slice', price: 0.29),
      ],
    ),
    Food(
      name: 'Orange Juice',
      description: 'Freshly squeezed orange juice.',
      imagePath: 'lib/images/sucos/suco2.jpg',
      price: 2.99,
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: 'Mint Leaves', price: 0.29),
        Addon(name: 'Ginger Shot', price: 0.49),
      ],
    ),
    Food(
      name: 'Lemonade',
      description: 'A sweet and tangy lemonade.',
      imagePath: 'lib/images/sucos/suco3.jpg',
      price: 2.49,
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: 'Chia Seeds', price: 0.49),
        Addon(name: 'Honey', price: 0.39),
      ],
    ),
    Food(
      name: 'Iced Tea',
      description: 'A chilled tea with a hint of lemon.',
      imagePath: 'lib/images/sucos/suco4.jpg',
      price: 2.49,
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: 'Peach Flavor', price: 0.49),
        Addon(name: 'Extra Ice', price: 0.19),
      ],
    ),
    Food(
      name: 'Strawberry Smoothie',
      description:
          'A creamy smoothie made with fresh strawberries.',
      imagePath: 'lib/images/sucos/suco5.jpg',
      price: 3.49,
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: 'Protein Powder', price: 1.49),
        Addon(name: 'Chia Seeds', price: 0.99),
      ],
    ),
    Food(
      name: 'Mango Lassi',
      description: 'A sweet and creamy mango yogurt drink.',
      imagePath: 'lib/images/sucos/suco6.jpg',
      price: 3.99,
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: 'Cardamom', price: 0.29),
        Addon(name: 'Extra Mango', price: 0.99),
      ],
    ),
    Food(
      name: 'Espresso',
      description: 'A strong and bold espresso shot.',
      imagePath: 'lib/images/sucos/suco7.jpg',
      price: 1.99,
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: 'Extra Shot', price: 0.99),
        Addon(name: 'Whipped Cream', price: 0.49),
      ],
    ),
    Food(
      name: 'Cappuccino',
      description:
          'A creamy cappuccino with steamed milk foam.',
      imagePath: 'lib/images/sucos/suco8.jpg',
      price: 2.99,
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: 'Cinnamon', price: 0.19),
        Addon(name: 'Vanilla Syrup', price: 0.49),
      ],
    ),
    Food(
      name: 'Hot Chocolate',
      description: 'A warm and rich hot chocolate.',
      imagePath: 'lib/images/sucos/suco9.jpg',
      price: 2.99,
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: 'Marshmallows', price: 0.49),
        Addon(name: 'Whipped Cream', price: 0.49),
      ],
    ),
    Food(
      name: 'Green Tea',
      description: 'A soothing cup of green tea.',
      imagePath: 'lib/images/sucos/suco10.jpg',
      price: 1.99,
      category: FoodCategory.drink,
      availableAddons: [
        Addon(name: 'Honey', price: 0.39),
        Addon(name: 'Lemon Slice', price: 0.29),
      ],
    ),

    //perfil
    Food(
      name: 'French Fries',
      description: 'Crispy golden french fries.',
      imagePath: 'lib/images/perfil/perfil1.jpeg',
      price: 2.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Sauce', price: 0.99),
        Addon(name: 'Ketchup', price: 0.19),
      ],
    ),
    Food(
      name: 'Onion Rings',
      description: 'Crispy battered onion rings.',
      imagePath: 'lib/images/perfil/perfil2.jpeg',
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Ranch Dressing', price: 0.49),
        Addon(name: 'BBQ Sauce', price: 0.49),
      ],
    ),
    Food(
      name: 'Mozzarella Sticks',
      description:
          'Fried mozzarella sticks with marinara sauce.',
      imagePath: 'lib/images/perfil/perfil3.jpeg',
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra Marinara', price: 0.49),
        Addon(name: 'Garlic Dip', price: 0.49),
      ],
    ),
    Food(
      name: 'Garlic Bread',
      description: 'Toasted bread with garlic butter.',
      imagePath: 'lib/images/perfil/perfil4.jpeg',
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Cheese Topping', price: 0.99),
        Addon(name: 'Herbs', price: 0.29),
      ],
    ),
    Food(
      name: 'Coleslaw',
      description: 'Creamy and tangy coleslaw.',
      imagePath: 'lib/images/perfil/perfil5.jpeg',
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra Dressing', price: 0.49),
        Addon(name: 'Chopped Nuts', price: 0.59),
      ],
    ),
  ];

  /*
   * G E T T E R S
   */

  List<Food> get menu => _menu;

  /* 
   !O P E R A T I O N S
  */

  // user cart
  final List<CartItem> _cart = [];
  List<CartItem> get cart => _cart;

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons = ListEquality().equals(
        item.selectedAddons,
        selectedAddons,
      );

      return isSameAddons && isSameFood;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  // remove from cart

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

  double get totalCartPrice {
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
  int get totalItemCount {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /* 
  * H E L P E R S
  */

  // generate a receipt
  String generateReceipt() {
    StringBuffer receipt = StringBuffer();
    receipt.writeln('--- Receipt ---\n');
    receipt.writeln();

    String formattedDate = DateFormat(
      'dd/MM/yyyy HH:mm:ss',
    ).format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln('-----------------');

    for (final cartItem in _cart) {
      receipt.writeln(
        '${cartItem.quantity} x ${cartItem.food.name} - ${formatPrice(cartItem.food.price * cartItem.quantity)}',
      );
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(
          '  Addons: ${formatAddons(cartItem.selectedAddons)}',
        );
      }
    }

    receipt.writeln('-----------------');
    receipt.writeln();
    receipt.writeln('Total Items: $totalItemCount');
    receipt.writeln(
      'Total: ${formatPrice(totalCartPrice)}',
    );

    return receipt.toString();
  }

  // format double value into money
  String formatPrice(double price) {
    return 'R\$ ${price.toStringAsFixed(2)}';
  }

  // format list of addons into string summary
  String formatAddons(List<Addon> addons) {
    return addons
        .map(
          (addon) =>
              "${addon.name} (${formatPrice(addon.price)})",
        )
        .join(', ');
  }
}
