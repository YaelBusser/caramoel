import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class SmallText extends StatelessWidget {
  Color color;
  final String text;
  double size;
  double height;
  SmallText({
    super.key,
    this.color = const Color(0XFF6c211c),
    required this.text,
    this.size = 12,
    this.height = 1.2,
  });

  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: "Roboto",
        fontSize: size,
        height: height,
      ),
    );
  }
}
