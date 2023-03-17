import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rcu_assistant/app_colors.dart';
import 'package:rcu_assistant/app_icons.dart';
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
                  child: Text(
                    'RCUcito Assistant',
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
                margin: EdgeInsets.symmetric(horizontal: height * 0.12),
                color: AppColors.backColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: height * 0.2),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Iniciar',
                          style: poppinsStyle.copyWith(
                            fontSize: 25.0,
                            color: AppColors.whiteColor,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                            text: ' Sesión',
                            style: poppinsStyle.copyWith(
                              fontWeight: FontWeight.w800,
                              color: AppColors.whiteColor,
                              fontSize: 25.0,
                            ))
                      ]),
                    ),
                    SizedBox(height: height * 0.064),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'User',
                        style: poppinsStyle.copyWith(
                          fontSize: 12.0,
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6.0),
                    Container(
                      height: 50.0,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: AppColors.whiteColor,
                      ),
                      child: TextFormField(
                        style: poppinsStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.blueDarkColor,
                          fontSize: 12.0,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: IconButton(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            onPressed: null,
                            icon: SvgPicture.asset(
                              AppIcons.userIcon,
                              colorFilter: const ColorFilter.mode(
                                  AppColors.mainBlueColor, BlendMode.srcIn),
                              height: 25.0,
                              width: 25.0,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          contentPadding: const EdgeInsets.only(top: 16.0),
                          hintText: 'Ingrese su usuario',
                          hintStyle: poppinsStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.blueDarkColor.withOpacity(0.5),
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.024),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Contraseña',
                        style: poppinsStyle.copyWith(
                          fontSize: 12.0,
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6.0),
                    Container(
                      height: 50.0,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: AppColors.whiteColor,
                      ),
                      child: TextFormField(
                        style: poppinsStyle.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppColors.blueDarkColor,
                          fontSize: 12.0,
                        ),
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: IconButton(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            onPressed: null,
                            icon: SvgPicture.asset(
                              AppIcons.passwordIcon,
                              colorFilter: const ColorFilter.mode(
                                  AppColors.mainBlueColor, BlendMode.srcIn),
                              height: 25.0,
                              width: 25.0,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          contentPadding: const EdgeInsets.only(top: 16.0),
                          hintText: 'Ingrese su contraseña',
                          hintStyle: poppinsStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.blueDarkColor.withOpacity(0.5),
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
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
