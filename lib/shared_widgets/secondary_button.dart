import 'package:flutter/material.dart';
import 'package:image_scanner/theme/style.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final bool disabled;
  final Function onPressed;
  final dynamic width;

  SecondaryButton({
    @required this.text,
    @required this.onPressed,
    this.width,
    this.disabled = false,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    var textTheme = Theme.of(context).textTheme;
    return Container(
      height: 42.0,
      width: width ?? null,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: ColorShades.textPrimaryDark,
            offset: Offset(-7, -4),
            blurRadius: 20,
          )
        ],
      ),
      child: RaisedButton(
        color: ColorShades.textPrimaryDark,
        disabledColor: ColorShades.disabled,
        textColor: ColorShades.textPrimaryLight,
        disabledTextColor: ColorShades.textSecGray3,
        highlightColor: ColorShades.secondaryColorHover,
        child: Text(
          text,
          style: textTheme.h4.copyWith(color: ColorShades.textPrimaryLight),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: disabled ? null : onPressed ?? () => {},
      ),
    );
  }
}
