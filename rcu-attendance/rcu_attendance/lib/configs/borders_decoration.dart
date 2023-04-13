
import 'package:flutter/material.dart';
import 'package:rcu_assistant/configs/app_colors.dart';
import 'package:rcu_assistant/configs/app_styles.dart';

InputDecoration bordersDecoration = InputDecoration(
    errorStyle: poppinsStyle.copyWith(fontSize: 5),
    hintStyle: poppinsStyle,
    hintText: "Contraseña",
    fillColor: Colors.white,
    filled: true,
    isDense: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.redColor,
        width: 2,
      ),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.whiteColor,
        width: 2,
      ),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.whiteColor,
        width: 1,
      ),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide:  BorderSide(
        color: AppColors.whiteColor,
        width: 2,
      ),
    ),
    border: const OutlineInputBorder(
      borderSide:  BorderSide(
        color: AppColors.whiteColor,
        width: 2,
      ),
    ),
  );