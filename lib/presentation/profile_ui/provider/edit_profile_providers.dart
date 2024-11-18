import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Providers for managing state
final editNameControllerProvider = Provider((ref) => TextEditingController(text: "muhammed"));
final editMobileControllerProvider = Provider((ref) => TextEditingController(text: "123456789"));

// Provider for the gender list
final gendersProvider = Provider<List<String>>((ref) => ['Male', 'Female', 'Other']);

// StateProvider for managing selected gender
final selectedGenderProvider = StateProvider<String?>((ref) => null);