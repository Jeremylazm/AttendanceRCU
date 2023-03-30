
import 'package:flutter/material.dart';

class ReportsButton extends StatelessWidget {
const ReportsButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){},
      hoverColor: Colors.grey.withOpacity(0.1),
      splashColor: Colors.green,
      child: Icon(
        Icons.list,
        size: 35,
        color: Colors.red,
      ),
    );
  }
}