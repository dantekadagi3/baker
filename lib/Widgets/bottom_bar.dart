import 'package:bakers/main.dart';
import 'package:bakers/provider_services/bottom_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomBar extends ConsumerWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(SelectedIndexProvider);
    return Container(
      padding: const EdgeInsets.all(30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                ref.read(SelectedIndexProvider.notifier).state = 0;
              },
              icon: Icon(Icons.home_filled,
                  color: selectedIndex == 0 ? mainColor : Colors.grey)),
          IconButton(
              onPressed: () {
                ref.read(SelectedIndexProvider.notifier).state = 1;
                Navigator.of(context).pushReplacementNamed('/sixth');
              },
              icon: Icon(Icons.list,
                  color: selectedIndex == 1 ? mainColor : Colors.grey)),
          IconButton(
              onPressed: () {
                 Navigator.of(context).pushReplacementNamed('/seventh');
                ref.read(SelectedIndexProvider.notifier).state = 2;
              },
              icon: Icon(Icons.shopping_cart,
                    
                  color: selectedIndex == 2 ? mainColor : Colors.grey)),
        ],
      ),
    );
  }
}
