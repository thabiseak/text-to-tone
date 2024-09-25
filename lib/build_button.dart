import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  final IconData icon;
  final Color color,splashColor;
  final String label;
  final Function func;

  const BuildButton({super.key,required this.label,required this.icon,required this.color,
  required this.func,required this.splashColor});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              icon: Icon(icon),
              color: color,
              splashColor: splashColor,
              onPressed: () => func()),
          Container(
              margin: const EdgeInsets.only(top: 8.0),
              child: Text(label,
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: color)))
        ]);
  }
}
