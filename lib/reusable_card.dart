import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.bgColor, this.body});

  final Color bgColor;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.all(10.0),
      child: body,
    );
  }
}
