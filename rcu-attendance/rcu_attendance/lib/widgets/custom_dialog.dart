
import 'package:flutter/material.dart';
import 'package:rcu_assistant/configs/app_colors.dart';

class CustomDialog extends StatelessWidget {
  CustomDialog({
    Key? key,
    required this.child,
    this.crossAxisAlignment,
  }) : super(key: key);

  final Widget child;
  CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context){
    return Dialog(
      backgroundColor: AppColors.mainBlueColor,
      insetPadding: const EdgeInsets.symmetric(horizontal: 25.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 400,
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
        constraints: const BoxConstraints(
          maxHeight: 300,
        ),
        child: SingleChildScrollView(
          child: child,
        ),
      ),
    );
  }
}