
import 'package:flutter/material.dart';
import 'package:rcu_assistant/configs/app_colors.dart';
import 'package:rcu_assistant/configs/app_styles.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    final width_screen = MediaQuery.of(context).size.width;
    final is_large_screen = width_screen > 800;

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.mainBlueColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      margin: const EdgeInsets.all(10),
      height: double.infinity,
      width: is_large_screen ? 250 : 100,
      child: Column(
        children: [
          const SizedBox(height: 15,),
          Text(is_large_screen ? "RCU Assistance" : "RCU", style: poppinsStyle.copyWith(fontSize: is_large_screen ? 20 : 15, color: AppColors.whiteColor, fontWeight: FontWeight.w800),),
          SizedBox(height: is_large_screen ? 20 : 5,),
          Image.asset("assets/images/logo_rcu_fondo_transparente.png", height: is_large_screen ? 80 : 60,),
          Expanded(child: Container(),),
          const ExitButton(),
        ],
      ),
    );
  }
}




class ExitButton extends StatelessWidget {

  const ExitButton({super.key,});
    
  @override
  Widget build(BuildContext context) {

    final width_screen = MediaQuery.of(context).size.width;
    final is_large_screen = width_screen > 800;

    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        margin: const EdgeInsets.all(15),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: AppColors.whiteColor, foregroundColor: AppColors.mainBlueColor, elevation: 0),
          onPressed: (){}, 
          child: SizedBox(
            width: 60,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.exit_to_app, size: 20,),
                is_large_screen ? Text("Salir", style: poppinsStyle.copyWith(fontWeight: FontWeight.bold),) : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}