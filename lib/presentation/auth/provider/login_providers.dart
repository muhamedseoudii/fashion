import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Providers for managing state
final emailControllerProvider = Provider((ref) => TextEditingController(text: "muhammed"));
final passControllerProvider = Provider((ref) => TextEditingController(text: "123456789"));
final obscureTProvider = StateProvider<bool>((ref) => true);
