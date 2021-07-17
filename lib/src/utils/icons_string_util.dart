import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'folder_open': Icons.folder_open,
  'accessibility': Icons.accessibility,
  'donut_large': Icons.donut_large,
  'input': Icons.input,
  'send_rounded': Icons.send_rounded,
  'list': Icons.list,
};

Icon getIcon(String iconName) {
  return Icon(
    _icons[iconName],
    color: Colors.blue,
  );
}
