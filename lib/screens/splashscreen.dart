import 'dart:async';

import 'package:flutter/material.dart';

import 'Login.dart';


 class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {



  @override
   void initState()
  {
    super.initState();
    Future.delayed(Duration(seconds: 5),page);
      }
    page ()
      {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginScreen()));
      }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: Colors.brown[400]!.withOpacity(1),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
              Image.asset('images/ehome.png',width: 200,height: 200,),
             Text('Everything found it here', style: TextStyle(fontSize: 19,color: Colors.white.withOpacity(.6))),
             SizedBox(height: 50,),
             CircularProgressIndicator(color: Colors.brown[800],),
           ],
         ),
       ),
     );
   }
}
