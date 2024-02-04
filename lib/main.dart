

import 'package:flutter/material.dart';
import 'witch_screen.dart';
import 'wizard_screen.dart';
import 'result_screen.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override

  Widget build(BuildContext context)
  {

    return MaterialApp(

      title: 'PotterPal',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0, 100, 0, 1.0),
        accentColor: Color.fromRGBO(192, 192, 192,1),
        canvasColor:Colors.black,
        //  canvasColor: Color.fromRGBO(51, 51, 51, 1),



         textTheme: TextTheme(
          titleLarge:TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.red,

          ),
 
          titleMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.amber,

          ),
          displayLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.amber,

          ),

         ),

      ),
      // home: MyHome(),
      routes: {
        '/' :(ctx) => MyHome(),
        WitchScreen.routeName :(ctx)=>WitchScreen(),
        WizardScreen.routeName :(ctx)=>WizardScreen(),
        ResultScreen.routeName :(ctx)=>ResultScreen(),

      },

    );

    

  }

  

}

class MyHome extends StatelessWidget
  {

    void goToWizardScreen(BuildContext context)
    {
       Navigator.of(context).pushNamed(
        (
          WizardScreen.routeName

        )
       );
    }
       void goToWitchScreen(BuildContext context)
       {
       Navigator.of(context).pushNamed(
        (
          WitchScreen.routeName

        )
       );
    }


    
    @override

    Widget build(BuildContext context)
    {
      return Scaffold(
        

        appBar: AppBar(
          
          title: Text('PotterPal'),
          backgroundColor: Theme.of(context).primaryColor,

        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                
                
                child: Container(
                  

                  color:  Color.fromRGBO(171, 35, 48, 1),
                  width: double.infinity,
              
                  child: Text('Magical Matches',style: TextStyle(
                    color: Colors.amber,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
              
              
              
                  ),
                  ),
                  
              
                    
                  ) ,
                ),
                 SizedBox(

                  height: 35,




                ),

                Container(
                  width: double.infinity,
                  height:200,
                  child:Image.asset('assets/images/HarryPotter with Ginny.jpeg',fit:BoxFit.fill,),

                ),
                SizedBox(

                  height: 35,




                ),
                Card(

                  color: Color.fromRGBO(171, 35, 48, 1),
                  
                  child: Column(

                    children: [
                      InkWell(
                        
                        onTap: (){
                          goToWizardScreen(context);

                        },
                        splashColor: Theme.of(context).accentColor,
                        child: Container(
                          decoration: BoxDecoration(
                            border:Border.all(),
                            borderRadius: BorderRadius.horizontal(),
                          ),
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              'Wizard',style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber,
                                
                              ),
                              
                              
                              
                            ),
                          ),
                        ),
                      ),
                       InkWell(
                        splashColor: Theme.of(context).accentColor,
                        onTap: () {
                           goToWitchScreen(context);
                          
                        },
                         child: Container(
                          decoration: BoxDecoration(
                            
                            border:Border.all(),
                            borderRadius: BorderRadius.horizontal(),
                          ),
                          width: double.infinity,
                           child: Center(
                             child: Text(
                              'Witch',style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.amber,
                                
                              ),
                             ),
                           ),
                         ),
                       ),
                        

                    ],

                  




                  ),

                ),

            ],
          ),
        ),
         
        );
        

      
    }

    
  }
  
