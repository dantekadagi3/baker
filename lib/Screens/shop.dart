import 'package:bakers/Widgets/product_card.dart';
import 'package:bakers/main.dart';
import 'package:bakers/models/shop_model.dart';
import 'package:bakers/provider_services/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class Shop extends ConsumerWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartProvider);

    final List<ShopModel> items = [
      ShopModel(name: "Chocolate cake", price: 3.00, image: 'assets/cake1.jpeg'),
      ShopModel(name: "Chocolate cake", price: 3.00, image: 'assets/cake2.jpeg'),
      ShopModel(name: "Chocolate cake", price: 3.00, image: 'assets/cake3.jpeg'),
      ShopModel(name: "Chocolate cake", price: 3.00, image: 'assets/treat1.jpeg'),
      ShopModel(name: "Chocolate cake", price: 3.00, image: 'assets/cake4.jpeg'),
      ShopModel(name: "Chocolate cake", price: 3.00, image: 'assets/treat2.jpeg'),
      ShopModel(name: "Chocolate cake", price: 3.00, image: 'assets/treat3.jpeg'),
      ShopModel(name: "Chocolate cake", price: 3.00, image: 'assets/treat4.jpeg'),
      ShopModel(name: "Chocolate cake", price: 3.00, image: 'assets/treat5.jpeg'),
      ShopModel(name: "Chocolate cake", price: 3.00, image: 'assets/treat6.jpeg'),
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Shop",
          style: GoogleFonts.lobster(
            color: mainColor,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Navigate to the cart page when clicked
              Navigator.pushNamed(context, '/seventh');
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            focusColor: mainColor,
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final product = items[index];
          return ProductCard(product: product);
        },
      ),
    );
  }
}
