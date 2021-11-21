import 'package:flutter/material.dart';

final _icon = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'build_circle': Icons.build_circle,
  'receipt': Icons.receipt
};

Icon getIcon(String nameIcon) => Icon(
      _icon[nameIcon],
      color: Colors.orange,
    );
