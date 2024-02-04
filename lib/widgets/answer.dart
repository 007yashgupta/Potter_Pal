import 'package:flutter/material.dart';
import 'package:potterpal/widgets/answerCard.dart';
import 'package:potterpal/widgets/quoteCard.dart';


class Answer extends StatelessWidget{

  final List<Map<String, Object>> answerList;
  final Function selectedOption;
  final String quote;

  Answer(this.answerList,this.quote,this.selectedOption);

  

  @override

  Widget build(BuildContext context)
  {

    return 
      
      Column(
        children: [
          Container(
            height: 250,
            child: ListView.builder(
              itemBuilder:(context, index) => AnswerCard(answerList[index],selectedOption) ,
              itemCount: answerList.length,),
          ),
          SizedBox(
            height: 22,
          ),
          Container(

            height: 200,
            
            child: QuoteCard(quote)),
        ],
      );
    

    

  }


}