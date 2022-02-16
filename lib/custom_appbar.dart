import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
    required this.bgColor,
    required this.isCenter,
  }) : super(key: key);

  final String title;
  final Color bgColor;
  final bool isCenter;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgColor,
      foregroundColor: Colors.black,
      elevation: 0,
      centerTitle: isCenter,
      title: Text(
        title,
        style: const TextStyle(fontSize: 30.0),
      ),
      shape: const Border(
        bottom: BorderSide(
          color: Colors.black,
          width: 1,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
