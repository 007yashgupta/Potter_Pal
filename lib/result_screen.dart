import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';



class ResultScreen extends StatelessWidget{


  final ConfettiController _confettiController = ConfettiController();


 


 

  static const routeName='/result-screen';

  @override

  Widget build(BuildContext context)
  {
    final result=ModalRoute.of(context)!.settings.arguments as Map<String , Object>;
    final int characterScore = result['score'] as int;
    final sequence=result['facts'] as List<dynamic>;
    final character=sequence.firstWhere((witch) => (characterScore >= witch.start && characterScore<= witch.end));
    Future.delayed(Duration(seconds: 0), () {
      _confettiController.play();
    });

    return Scaffold(

      appBar: AppBar(
        title: Text('Suitable Date'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          
          children: <Widget>[
                   ConfettiWidget(
              gravity: 0.1,
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality
                  .explosive,// Change the directionality based on your preference
              shouldLoop: false,
              particleDrag: 0.1,  // Adjust this value to control the size
              numberOfParticles: 5,
              emissionFrequency: 0.04,
               // Set to true if you want the animation to loop
            ),
            SizedBox(height: 15,),
            Text(character.title,style: Theme.of(context).textTheme.titleLarge,),
            SizedBox(height: 20,),
            Container(
              height: 300,
              width: double.infinity,
              child:Image.asset(character.path,fit: BoxFit.fill,),
            ),
            SizedBox(height: 25,),
            Text(character.statement,style: Theme.of(context).textTheme.displayLarge,),
            //  ConfettiWidget(
            //   gravity: 0.5,
            //   confettiController: _confettiController,
            //   blastDirectionality: BlastDirectionality
            //       .explosive, // Change the directionality based on your preference
            //   shouldLoop: true,
            //   particleDrag: 0.5,  // Adjust this value to control the size
            //   numberOfParticles: 50, // Set to true if you want the animation to loop
            // ),
          ],
      
        ),
      ),

    );

  }
}