import 'package:hooks_riverpod/hooks_riverpod.dart';

class TooglePasswordNotifier extends StateNotifier<bool> {
  TooglePasswordNotifier() : super(true);

  void toogle() {
    state = !state;
  }
}

final tooglePasswordNotifier =
    StateNotifierProvider<TooglePasswordNotifier, bool>(
  (ref) => TooglePasswordNotifier(),
);
