
import 'package:flutter/material.dart';

import 'package:rcu_assistant/configs/app_colors.dart';
import 'package:rcu_assistant/configs/app_styles.dart';

class CustomButton extends StatelessWidget {

  final String title;
  final VoidCallback? onTap;

  const CustomButton({ Key? key , required this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8.0),
        child: Ink(
          height: 35.0,
          padding: const EdgeInsets.symmetric(
              horizontal: 20.0, vertical: 0.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: AppColors.mainBlueColor,
          ),
          child: Center(
            child: Text(
              title,
              style: poppinsStyle.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.whiteColor,
                fontSize: 14.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}