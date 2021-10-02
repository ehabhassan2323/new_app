import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  var formKey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       extendBody: true,
       body: SingleChildScrollView(
         child: Center(
           child: Form(
             key: formKey,
             child: Column(
               children: [
                 Stack(
                   children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 80),
                       child: Image.asset(
                         'images/ehome.png',
                         fit: BoxFit.fill,
                         height: 150,
                         width: 250,
                       ),
                     ),
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                         color: Colors.brown[400]!.withOpacity(.5),
                       ),
                       width: double.infinity,
                       height: 400,
                     ),
                   ],
                 ),
                 SizedBox(height: 40,) ,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: TextFormField(
                      validator: (value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'please enter your name';
                        }
                        else
                        {
                          return null ;
                        }
                      },
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                        labelText: 'Name' , labelStyle: TextStyle(color: Colors.brown[400]!.withOpacity(.9) , fontWeight: FontWeight.bold) ,
                        prefixIcon: Icon(Icons.person , color: Colors.brown[400]!.withOpacity(.6),) ,
                      ),
                    ),
                  ),
                 SizedBox(height: 30,) ,
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 28),
                   child: TextFormField(
                     validator: (value)
                     {
                       if(value!.isEmpty)
                         {
                           return 'Please enter your phone';
                         }
                       else
                         {
                           return null ;
                         }
                     },
                     controller: phoneController,
                     keyboardType: TextInputType.number,
                     decoration: InputDecoration(
                       border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                       labelText: 'Phone' , labelStyle: TextStyle(color: Colors.brown[400]!.withOpacity(.9) , fontWeight: FontWeight.bold) ,
                       prefixIcon: Icon(Icons.phone , color: Colors.brown[400]!.withOpacity(.6),) ,
                     ),
                   ),
                 ),
                  SizedBox(height: 65),
                  MaterialButton(
                    height: 60,
                    minWidth: 220,
                    child: Text('Start',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white), ),
                    shape: OutlineInputBorder( borderRadius: BorderRadius.circular(20)),
                    color: Colors.brown[400]!.withOpacity(.5),
                    onPressed: ()
                    {
                      if(formKey.currentState!.validate())
                        {
                          print(nameController);
                          print(phoneController);
                        }
                      else
                        {
                          return null ;
                        }
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context)=>HomeScreen())
                      );

                    },
                  ),
                    SizedBox(height: 80),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: ()async
                            {
                               launch('https://www.instagram.com/',forceWebView: true,);
                            },
                            child: Image.asset('images/insta.png',
                            height: 35,
                              width: 35,
                              alignment: Alignment.center
                            ),
                          ),
                          SizedBox(width: 30,),
                          GestureDetector(
                            onTap:()async
                            {
                              await launch('https://www.facebook.com/',forceWebView: true,);

                            } ,
                            child: Image.asset('images/face.png',
                            height: 35,
                              width: 35,
                              alignment: Alignment.center
                            ),
                          ), 
                          SizedBox(width: 30,),
                          GestureDetector(
                            onTap: () async
                            {
                            await  launch(' https://www.google.com/',forceWebView: true,);
                            },
                            child: Image.asset('images/google.png',
                                height: 35,
                                width: 35,
                                alignment: Alignment.center
                            ),
                          ),
                        ],
                      ),

               ],
             ),
           ),
         ),
       ),
    );
  }
}

