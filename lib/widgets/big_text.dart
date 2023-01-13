import 'package:caramoel/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class BigText extends StatelessWidget {
  Color color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText(
      {super.key,
      this.color = const Color(0xFF191919),
      required this.text,
      this.size = 20,
      this.overFlow = TextOverflow.ellipsis});

  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: "Roboto",
        fontSize: Dimensions.font20,
      ),
    );
  }
}
