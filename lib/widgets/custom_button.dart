import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.marginTop,
    required this.title,
    this.width = double.infinity,
    required this.colorButton,
    required this.textStyle,
    required this.onPressed,
  });

  final double marginTop;
  final String title;
  final double width;
  final Color colorButton;
  final TextStyle textStyle;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      margin: EdgeInsets.only(
        top: marginTop,
        bottom: 80,
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: colorButton,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            )),
        child: Text(
          title,
          style: textStyle,
        ),
      ),
    );
  }
}
