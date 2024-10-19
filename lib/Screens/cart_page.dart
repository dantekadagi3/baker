import 'package:bakers/main.dart';
import 'package:bakers/provider_services/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text('Your Cart',
        style: GoogleFonts.lobster(
          color: mainColor,
          fontSize: 20
        ),),
        backgroundColor: Colors.transparent,),
      body: cart.isEmpty
          ? Center(child: const Text('No items in the cart',
          style: TextStyle(
            color: Colors.white,
          ),))
          : ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                final product = cart[index];
                return ListTile(
                  
                  leading: Image.asset(product.image!,
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,),
                  tileColor: Colors.white,
                  title: Text(product.name!),
                  subtitle: Text('\$${product.price}'),
                   iconColor: mainColor,
                   selectedTileColor: Colors.black,
                   selectedColor: Colors.white,
                   
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_shopping_cart),
                    onPressed: () {
                      ref.read(cartProvider.notifier).removeFromCart(product);
                    },
                  ),
                );
              },
            ),
    );
  }
}
