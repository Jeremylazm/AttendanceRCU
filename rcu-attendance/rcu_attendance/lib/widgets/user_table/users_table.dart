import 'package:flutter/material.dart';

class UsersTable extends StatelessWidget {
  final List<Widget> items;

  const UsersTable({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: Column(
        children: [
          ...items,
        ],
      ),
    );
  }
}
