import 'package:flutter/material.dart';
import 'package:rcu_assistant/app_colors.dart';
import 'package:rcu_assistant/app_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.backColor,
      body: SizedBox(
        height: height,
        width: width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
              height: height,
              color: AppColors.mainBlueColor,
              
              child: Center(
                child: Text('RCU Assistant',
                  style: poppinsStyle.copyWith(
                    fontSize: 48.0,
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
              height: height,
              color: AppColors.backColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}