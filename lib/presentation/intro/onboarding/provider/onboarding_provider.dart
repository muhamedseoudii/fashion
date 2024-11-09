import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrPageNotifier extends StateNotifier<int> {
  CurrPageNotifier() : super(0);

  void setPage(int value) {
    state = value;
  }

  void previousPage() {
    if (state > 0) {
      --state;
    }
  }

  void nextPage() {
    if (state < 2) {
      state++;
    }
  }
}

final currPageProvider = StateNotifierProvider<CurrPageNotifier, int>(
  (ref) => CurrPageNotifier(),
);
