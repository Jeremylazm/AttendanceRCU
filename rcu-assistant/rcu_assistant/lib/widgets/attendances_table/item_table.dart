
import 'package:flutter/material.dart';

class ItemTable extends StatelessWidget {
const ItemTable({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Text("icon"),
        Text("name"),
      ],
    );
  }
}