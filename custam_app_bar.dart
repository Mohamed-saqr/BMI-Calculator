import 'package:flutter/material.dart';

class CustamAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double elevation;
  final Color backgroundColor;
  final bool centerTitle;
  final Widget title;

  const CustamAppBar({
    super.key,
    required this.elevation,
    required this.backgroundColor,
    required this.centerTitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      backgroundColor: backgroundColor,
      centerTitle: centerTitle,
      iconTheme: const IconThemeData(
        size: 30,
        color: Colors.white,
      ),
      title: title,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
