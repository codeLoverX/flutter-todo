//? This file is fully given

import 'package:flutter/material.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  Bar(this.title);
  @override
  Size get preferredSize => Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text(title));
  }
}
