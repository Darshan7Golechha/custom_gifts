import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function function;
  final Color textColor;
  final double height;
  final double radius;
  final double textSize;

  const CustomButton({
    super.key,
    required this.text,
    required this.function,
    this.color = const Color(0xFFEC407A),
    this.textColor = Colors.white,
    this.height = 50,
    this.radius = 10,
    this.textSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        alignment: Alignment.center,
        elevation: 0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        backgroundColor: color,
        foregroundColor: textColor,
        minimumSize: Size(double.infinity, height),
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textStyle: TextStyle(fontSize: textSize),
      ),
      onPressed: () => function(),
      child: Center(child: Text(text)),
    );
  }
}
