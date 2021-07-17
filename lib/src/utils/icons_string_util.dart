import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'folder_open': Icons.folder_open,
  'accessibility': Icons.accessibility,
  'donut_large': Icons.donut_large,
  'input': Icons.input,
};

Icon getIcon(String iconName) {
  return Icon(
    _icons[iconName],
    color: Colors.blue,
  );
}
