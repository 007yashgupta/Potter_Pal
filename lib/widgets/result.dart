import 'package:flutter/material.dart';

class Result extends StatelessWidget{

  final int testScore;
  Result(this.testScore);

  @override

  Widget build(BuildContext context)
  {
    return Center(child: Text('Result : ${testScore} '));
  }
}