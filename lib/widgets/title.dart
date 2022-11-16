import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  TitleWidget({Key? key, this.title}) : super(key: key);
  String? title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: TextStyle(
          color: Colors.indigo, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
