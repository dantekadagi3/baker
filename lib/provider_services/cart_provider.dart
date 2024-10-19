import 'package:bakers/models/shop_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartNotifier extends StateNotifier<List<ShopModel>> {
  CartNotifier() : super([]);

  void addToCart(ShopModel shop) {
    state = [...state, shop];
  }


  void removeFromCart(ShopModel shop) {
  state = state.where((item) => item != shop).toList();
}

}

//cart provider
final cartProvider = StateNotifierProvider<CartNotifier, List<ShopModel>>((ref) {
  return CartNotifier();
});