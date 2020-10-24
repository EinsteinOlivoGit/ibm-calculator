import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent(
      {@required this.icon, @required this.label, @required this.color});

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
          color: color,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18.0,
            color: color,
          ),
        )
      ],
    );
  }
}
