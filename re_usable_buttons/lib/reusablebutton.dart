import 'package:flutter/material.dart';

class ReUsableIconButton extends StatelessWidget {
  final Color buttonColor;
  final Color? splashColor;
  final Color? highlightedColor;
  final IconData icon;
  final double? iconSize;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? borderRadius;

  const ReUsableIconButton(
      {Key? key,
      required this.buttonColor,
      this.splashColor = Colors.white,
      this.highlightedColor,
      required this.icon,
      this.iconSize = 20,
      this.horizontalPadding = 20,
      this.verticalPadding = 20,
      this.borderRadius = 40})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: splashColor,
        highlightColor: highlightedColor,
        onTap: () async {
          await Future.delayed(const Duration(milliseconds: 100));
        },
        borderRadius: BorderRadius.all(Radius.circular(borderRadius!)),
        child: Ink(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding!, vertical: verticalPadding!),
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius!)),
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: iconSize,
          ),
        ),
      ),
    );
  }
}
