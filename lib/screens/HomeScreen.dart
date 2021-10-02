import 'package:flutter/material.dart';
import 'package:ihome/drawer/drawer.dart';

 class HomeScreen extends StatelessWidget {

    var formKey = GlobalKey<FormState>();
    var scaf = GlobalKey<ScaffoldState>();

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       key: scaf,
       appBar: AppBar(
         leading: IconButton(
           icon:Icon(Icons.menu, color: Colors.brown[400],) ,
           onPressed: ()
           {
             scaf.currentState!.openDrawer();
           },

         ),
         // backgroundColor: Colors.brown[400]!.withOpacity(.5),
         title: Image.asset('images/ehome.png', width: 70,height: 60,),
       ),
       extendBody: true,
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

       floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.brown[200],
         onPressed: (){},
         child: Icon(Icons.add),

       ),

       bottomNavigationBar: BottomAppBar(
         color: Colors.brown[200],
         shape: CircularNotchedRectangle(),

         child: Container(

           height: 50,
           child: Row(

             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               IconButton(onPressed: (){}, icon:Icon(Icons.home,size: 30,color: Colors.white,)),
               IconButton(onPressed: (){}, icon:Icon(Icons.store_mall_directory_rounded,size: 30,color: Colors.white,)),
             ],
           ),
         ),
       ),
       drawer: Drawer(
         child: Column(
           children: [
             MyDrawer(),
           ],
         ),
       ) ,
     );

   }
 }
