import 'package:flutter/material.dart';
import 'answer.dart';

class AnswerCard extends StatelessWidget{



  
  
  final Map<String, Object> answer;
  final Function selectedOption;

  AnswerCard( this.answer,this.selectedOption);

 

  @override

  Widget build(BuildContext context)
  {
    return  Container(
        child: InkWell(
          onTap: () {

            selectedOption(answer['score']);
            

            
          },
          splashColor: Colors.amber,
          child: Card(
            elevation: 4,
            color: Colors.green,
            child: ListTile(
              title: Text(answer['text'] as String,style: Theme.of(context).textTheme.titleMedium,
              ),
              leading:   Icon(Icons.star,color: Colors.purple,)
            ),
          ),
        ),
      );
    
  }
}