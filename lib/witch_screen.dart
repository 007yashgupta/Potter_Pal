import 'dart:math';
import 'package:flutter/material.dart';
import 'package:potterpal/result_screen.dart';
import 'package:potterpal/widgets/question.dart';
import 'dummy_List.dart';
import './widgets/result.dart';
import './widgets/quoteCard.dart';

class WitchScreen extends StatefulWidget
{
  static const routeName='/witch-screen';

  @override
  State<WitchScreen> createState() => _WitchScreenState();
}

class _WitchScreenState extends State<WitchScreen> {
  int i=0;
  var score=0;
  int length=questionsWitch.length;






   void selectedOption(int scoreChoice)
  {

    score=score+scoreChoice;
    print(score);


    
    setState(() {

      witchQuote= harryPotterWitchFunFacts[Random().nextInt(harryPotterWitchFunFacts.length)];
      print(witchQuote);

      
      i++;
      
    });
    
    
  }

  // Future<void> goToResultScreen(BuildContext context) async
  // {

  //  Navigator.of(context).pushReplacementNamed(
  //       (
  //         ResultScreen.routeName
          

  //       ),
  //       arguments: score ,
  //      );

  // }
  void goToResultScreen(BuildContext context)  {
  
  Navigator.of(context).pushReplacementNamed(

    ResultScreen.routeName,
    arguments: {
      'score' : score,
      'facts' : resultFactsWitch,
    },
   
  );
}



  String ?witchQuote;
  @override
   

  void initState()
  {
    witchQuote= harryPotterWitchFunFacts[Random().nextInt(harryPotterWitchFunFacts.length)] ;
    print(witchQuote);
    super.initState();


  }

   @override


  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Witch'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
      
              height: 10,
      
            ),
            Container(
              width: 230,
              height: 150,
              
              child:Image.asset('assets/images/HarryPotterLogo.jpg',fit:BoxFit.fill,
              ),
      
            ),
            SizedBox(
              height: 10,
            ),

            if(i+1<=length) Question(questionsWitch[i],witchQuote!,selectedOption),
            if(i+1>length) _buildResultButton(context) ,
           

           
            
      
          ],
          
        ),
        
      )

    );
  }
  Widget _buildResultButton(BuildContext context) {
    // Schedule the navigation after the build is complete
    WidgetsBinding.instance.addPostFrameCallback((_) {
      goToResultScreen(context);
    });
    // You can also return an empty container or another Widget here if needed
    return Container();
  }
}


