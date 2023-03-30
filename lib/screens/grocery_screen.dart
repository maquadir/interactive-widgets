import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/grocery_manager.dart';
import 'empty_grocery_screen.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      body: buildGroceryScreen(),
    );
  }

  Widget buildGroceryScreen() {
    // 1
    return Consumer<GroceryManager>(
      // 2
      builder: (context, manager, child) {
        // 3
        if (manager.groceryItems.isNotEmpty) {
          // TODO: Add GroceryListScreen
          return Container();
        } else {
          // 4
          return const EmptyGroceryScreen();
        }
      },
    );
  }
}
