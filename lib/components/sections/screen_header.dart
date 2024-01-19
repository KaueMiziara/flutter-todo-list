import 'package:flutter/material.dart';

class ScreenHeader extends StatelessWidget implements PreferredSizeWidget {
  const ScreenHeader({super.key, required this.screenTitle});

  final String screenTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(70, 202, 254, 1.0),
      foregroundColor: Colors.white,
      centerTitle: true,
      toolbarHeight: 96,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
            icon: const Icon(Icons.close, color: Colors.black),
            onPressed: () {},
          ),
        ),
      ),
      title: Text(
        screenTitle,
        style: const TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(96);
}
