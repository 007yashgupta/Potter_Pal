import 'dart:math';
import 'package:flutter/material.dart';
import 'package:potterpal/widgets/question.dart';
import 'dummy_List.dart';
import './widgets/result.dart';
import 'result_screen.dart';

class WizardScreen extends StatefulWidget
{
  static const routeName='/wizard-screen';

  @override
  State<WizardScreen> createState() => _WizardScreenState();
}

class _WizardScreenState extends State<WizardScreen> {
  int i=0;
  var score=0;
  int length=questionsWizard.length;






   void selectedOption(int scoreChoice)
  {

    score=score+scoreChoice;
    print(score);


    
    setState(() {

      wizardQuote= harryPotterWizardFunFacts[Random().nextInt(harryPotterWizardFunFacts.length)];
      print(wizardQuote);

      
      i++;
      
    });
    
    
  }

  void goToResultScreen(BuildContext context)
  {

   Navigator.of(context).pushReplacementNamed(
        (
          ResultScreen.routeName
          

        ),
        arguments: {
          'score' : score,
          'facts' : resultFactsWizard,

        },
       );

  }

  String ?wizardQuote;
  @override
   

  void initState()
  {
    wizardQuote= harryPotterWizardFunFacts[Random().nextInt(harryPotterWizardFunFacts.length)];
    print(wizardQuote);
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

            if(i+1<=length) Question(questionsWizard[i],wizardQuote!,selectedOption),
           

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