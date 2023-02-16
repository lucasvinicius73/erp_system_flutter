import 'package:erp_system/src/app_module.dart';
import 'package:erp_system/src/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() {
  // setUrlStrategy(PathUrlStrategy());
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
