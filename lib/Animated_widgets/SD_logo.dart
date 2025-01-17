import 'package:flutter/material.dart';
import 'package:portfolio/values/values.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key? key,
    this.title = "SD",
    this.titleColor = AppColors.black,
    this.titleStyle,
    this.fontSize = 60,
  }) : super(key: key);

  final String title;
  final TextStyle? titleStyle;
  final Color titleColor;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Text(
      title,
      style: titleStyle ?.fontFamily!=null && titleStyle?.fontSize != null ?
          titleStyle :
          textTheme.displayMedium?.copyWith(
            color: titleColor,
            fontSize: fontSize,
            fontFamily: 'fontFamily',
          ),
    );

  }
}
