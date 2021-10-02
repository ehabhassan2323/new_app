import 'package:flutter/material.dart';


 class ScienceScreen extends StatefulWidget {
   const ScienceScreen({Key? key}) : super(key: key);

   @override
   _ScienceScreenState createState() => _ScienceScreenState();
 }

 class _ScienceScreenState extends State<ScienceScreen> {
   @override
   Widget build(BuildContext context) {
     return Center(
         child :Text('Science Screen', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
     );
   }
 }
