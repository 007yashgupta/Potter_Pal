import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget{

  final String quote;

  QuoteCard(this.quote);


  @override

  Widget build(BuildContext context)
  {
    return Container(
      height: 200,
      
        child: Container(
          width: double.infinity,
          child: Text('" ${quote} " ',style: Theme.of(context).textTheme.titleLarge),
        ),
      
    );
  }
}