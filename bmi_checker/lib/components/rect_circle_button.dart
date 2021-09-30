import 'package:bmi_checker/project_constants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final VoidCallback onClick;
  final IconData icon;
  final VoidCallback funcLongPress;
  final VoidCallback funcLongPressStopped;

  const RoundIconButton(
      this.onClick, this.icon, this.funcLongPress, this.funcLongPressStopped,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: funcLongPress,
      onLongPressUp: funcLongPressStopped,
      child: RawMaterialButton(
        onPressed: onClick,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        fillColor: kButtonColour,
        constraints: const BoxConstraints(minWidth: 45.0, minHeight: 45.0),
        child: Icon(icon),
      ),
    );
  }
}
