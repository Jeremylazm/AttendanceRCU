
import 'package:flutter/material.dart';

import '../configs/app_colors.dart';
import '../configs/app_styles.dart';

class CustomTitle extends StatelessWidget {

  final String text;
  final double? fontSize;

const CustomTitle({ Key? key, required this.text, this.fontSize }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(25),
      child: Text(text, style: poppinsStyle.copyWith(
        fontSize: fontSize ?? 25, 
        fontWeight: FontWeight.bold,
        color: AppColors.mainBlueColor,
      )),
    );
  }
}