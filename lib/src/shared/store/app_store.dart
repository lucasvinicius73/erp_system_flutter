import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'app_store.g.dart';

class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {
  @observable
  ThemeMode themeMode = ThemeMode.system;

  @action
  void changeThemeMode(ThemeMode? mode) {
    if (mode != null) {
      themeMode = mode;
    }
  }
}
