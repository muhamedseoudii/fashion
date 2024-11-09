import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Providers for managing state
final caNameControllerProvider = Provider((ref) => TextEditingController());
final caEmailControllerProvider = Provider((ref) => TextEditingController());
final caPassControllerProvider = Provider((ref) => TextEditingController());
final caObscureTProvider = StateProvider<bool>((ref) => true);
final checkboxProvider = StateProvider<bool>((ref) => false);
final checkboxValidationProvider = StateProvider<bool>((ref) => true);
