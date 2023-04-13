
import 'package:flutter/material.dart';
import 'package:rcu_assistant/configs/app_colors.dart';
import 'package:rcu_assistant/configs/app_styles.dart';
import 'package:rcu_assistant/helpers.dart';

class ItemTable extends StatelessWidget {

final String name;
final Widget button;
bool mini;

ItemTable({ Key? key, required this.name, required this.button, this.mini=false }) : super(key: key);


  @override
  Widget build(BuildContext context){

    final isLargeScreen = MediaQuery.of(context).size.width > 800;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _Icon(letter: name[0].toUpperCase(), color: generateColorFromName(name), mini: mini,),
            _Name(name: name, mini: mini,),
            button,
          ],
        ),
        SizedBox(
          width: isLargeScreen ? 480 : 220, 
          height: 5,
          child: Divider(
            color: Colors.black.withOpacity(0.5), 
            thickness: 1
          ),
        ),
      ],
    );
  }
}

class _Icon extends StatelessWidget {

final String? letter;
final Color? color;
bool mini;

_Icon({ Key? key, this.letter, this.color, this.mini = false}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: mini ? 20 : 40,
      height: mini ? 20 : 40,
      margin: const EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color ?? Colors.grey.withOpacity(0.4),
        border: Border.all(width: 2.0, color: AppColors.mainBlueColor),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: Text(letter ?? "J", style: poppinsStyle.copyWith(fontSize: mini ? 10 : 20, fontWeight: FontWeight.bold),),
    );
  }
}

class _Name extends StatelessWidget {

  final String name;
  bool mini;

_Name({ Key? key, required this.name, this.mini=false }) : super(key: key);

  @override
  Widget build(BuildContext context){

    final isLargeScreen = MediaQuery.of(context).size.width > 800;

    return Container(
      width: isLargeScreen ? 350 : 100,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        name,
        style: poppinsStyle.copyWith(fontWeight: FontWeight.bold, fontSize: mini ? 12 : 15),
      ),
    );
  }
}

