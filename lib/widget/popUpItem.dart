import 'package:flutter/material.dart';
import '../models/popmenu.dart';

class PopUpItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [...popUpItems.toList()],
    );
  }
}
