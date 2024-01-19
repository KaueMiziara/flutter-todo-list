import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 234,
      color: const Color.fromRGBO(70, 202, 254, 1.0),
      child: const Padding(
        padding: EdgeInsets.fromLTRB(16, 42, 16, 54),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Month dd, yyyy",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Text(
                "Todo List",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
