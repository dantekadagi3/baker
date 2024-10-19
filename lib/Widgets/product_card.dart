import 'package:bakers/main.dart';
import 'package:bakers/models/shop_model.dart';
import 'package:bakers/provider_services/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductCard extends ConsumerWidget {
  final ShopModel product;

  // ignore: prefer_const_constructors_in_immutables
  ProductCard({required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      color: Colors.black,
      elevation: 4,
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              product.image!,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(product.name!, style:const  TextStyle(fontSize: 16,
            color: Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text('\$${product.price!.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold,
                color: Colors.white)),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                ref.read(cartProvider.notifier).addToCart(product);
              },
              child: const Text('Add',
              style: TextStyle(
                color: mainColor
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
