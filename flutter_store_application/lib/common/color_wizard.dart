import 'dart:convert';
import 'dart:io';


import 'package:flutter/material.dart';

class ColorWizard {
  static Color primary = const Color.fromARGB(230, 193, 0, 0);
  static Color primaryText = const Color(0xff303030);
  static Color secondaryText = const Color(0xff757575);
  static Color textbox = const Color(0xffe0e0e0);
  static Color placeholder = const Color(0xff424242);
  static Color white = const Color(0xffffffff);

  static void setColors(Map<String, dynamic> colors) {
    if (colors.containsKey('primary')) {
      primary = _parseColor(colors['primary']);
    }
    if (colors.containsKey('primaryText')) {
      primaryText = _parseColor(colors['primaryText']);
    }
    if (colors.containsKey('secondaryText')) {
      secondaryText = _parseColor(colors['secondaryText']);
    }
    if (colors.containsKey('textbox')) {
      textbox = _parseColor(colors['textbox']);
    }
    if (colors.containsKey('placeholder')) {
      placeholder = _parseColor(colors['placeholder']);
    }
    if (colors.containsKey('white')) {
      white = _parseColor(colors['white']);
    }
  }

  static Color _parseColor(dynamic colorValue) {
    if (colorValue is int) {
      return Color(colorValue);
    } else if (colorValue is String) {
      return Color(int.parse(colorValue, radix: 16));
    }
    return Colors.transparent;
  }

  static void setPaletteFromJsonFile(String filePath) {
    try {
      final jsonString = File(filePath).readAsStringSync();
      final Map<String, dynamic> jsonMap = json.decode(jsonString);
      ColorWizard.setColors(jsonMap);
    } catch (e) {
      print('Error reading or parsing JSON file: $e');
    }
  }
}