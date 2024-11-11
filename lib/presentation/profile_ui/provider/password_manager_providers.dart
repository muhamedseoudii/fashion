import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Providers for managing state
final pmCurrPassControllerProvider = Provider((ref) => TextEditingController());
final pmPassControllerProvider = Provider((ref) => TextEditingController());
final pmConfirmPassControllerProvider = Provider((ref) => TextEditingController());
final pmObscureTCurrPassProvider = StateProvider<bool>((ref) => true);
final pmObscureTPassProvider = StateProvider<bool>((ref) => true);
final pmObscureTConfirmPassProvider = StateProvider<bool>((ref) => true);