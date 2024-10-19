import 'package:flutter_riverpod/flutter_riverpod.dart';

//creating a provider to keep track of the state of the bottom navigation bar

// ignore: non_constant_identifier_names
final SelectedIndexProvider = StateProvider<int>((ref) => 0);
