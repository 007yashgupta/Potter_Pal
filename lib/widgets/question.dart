import 'package:flutter/material.dart';
import 'package:potterpal/widgets/answer.dart';
import 'package:potterpal/widgets/quoteCard.dart';


class Question extends StatelessWidget{

  final Map<String, Object> question;
  final String quote;
  final Function selectedOption;

  Question(this.question,this.quote, this.selectedOption);

  @override

  Widget build(BuildContext context)
  {

    return Column(
      children: <Widget>[
        Card(
          
          color: Colors.purple,
          elevation: 4,
          child: Text(question['questionText'] as String,style:Theme.of(context).textTheme.displayLarge,
          )

          ),
          Answer(question['answers'] as List<Map<String, Object>>,quote,selectedOption),
         
      ],
    );

  }


}