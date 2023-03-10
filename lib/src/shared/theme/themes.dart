import 'package:flutter/material.dart';

part 'color_schemes.g.dart';

final lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: _lightColorScheme,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: _lightColorScheme.secondaryContainer));
final darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: _darkColorScheme,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: _darkColorScheme.secondaryContainer));
