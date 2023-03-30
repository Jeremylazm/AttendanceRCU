
import 'package:flutter/material.dart';
import 'package:rcu_assistant/configs/app_colors.dart';
import 'package:rcu_assistant/configs/app_styles.dart';
import 'package:rcu_assistant/widgets/user_table/assistance_button.dart';

class ItemTable extends StatelessWidget {

final String name;

const ItemTable({ Key? key, required this.name }) : super(key: key);


  @override
  Widget build(BuildContext context){

    final is_large_screen = MediaQuery.of(context).size.width > 800;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _Icon(),
            _Name(name: name),
            AssistanceButton(),
          ],
        ),
        SizedBox(
          child: Divider(
            color: Colors.black.withOpacity(0.5), 
            thickness: 1
          ), 
          width: is_large_screen ? 480 : 220, 
          height: 5,
        ),
      ],
    );
  }
}

class _Icon extends StatelessWidget {

final String? letter;

const _Icon({ Key? key, this.letter }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.4),
        border: Border.all(width: 2.0, color: AppColors.mainBlueColor),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Text(letter ?? "J", style: poppinsStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold),),
    );
  }
}

class _Name extends StatelessWidget {

  final String name;

const _Name({ Key? key, required this.name }) : super(key: key);

  @override
  Widget build(BuildContext context){

    final is_large_screen = MediaQuery.of(context).size.width > 800;

    return Container(
      width: is_large_screen ? 350 : 100,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        name,
        style: poppinsStyle.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}

