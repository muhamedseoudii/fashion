import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Providers for managing state
final newPassControllerProvider = Provider((ref) => TextEditingController());
final newConfirmPassControllerProvider =
    Provider((ref) => TextEditingController());
final newObscureTProvider = StateProvider<bool>((ref) => true);
final newObscureTProvider1 = StateProvider<bool>((ref) => true);
