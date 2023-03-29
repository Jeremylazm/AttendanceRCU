
import 'package:flutter/material.dart';

class AssistanceButton extends StatelessWidget {
const AssistanceButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){},
      hoverColor: Colors.grey.withOpacity(0.1),
      splashColor: Colors.green,
      child: Icon(
        Icons.check_box_outline_blank,
        size: 35,
        color: Colors.red,
      ),
    );
  }
}