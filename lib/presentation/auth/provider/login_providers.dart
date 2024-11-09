import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Providers for managing state
final emailControllerProvider = Provider((ref) => TextEditingController());
final passControllerProvider = Provider((ref) => TextEditingController());
final obscureTProvider = StateProvider<bool>((ref) => true);
