import 'package:flutter/material.dart';
import 'package:ihome/newsApp/provider/states.dart';
import 'package:ihome/newsApp/remote/cashHelper.dart';
import 'package:provider/provider.dart';


class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
 List<String> language = [
   'ar' ,
   'en' ,
   'us' ,
 ];


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.language),
          title: Text('language'),
       trailing: DropdownButton(
         value:  Provider.of<States>(context,).selectedLang=CashHelper.getString(key: 'language') ,

         onChanged: ( value)
         {
           Provider.of<States>(context,listen: false).selectedLanguage(value);
         },
       items:language.map((lang){
         return DropdownMenuItem(
           child: Text(lang),
           value: lang,

            onTap: ()
            {

              print(lang);
            },
         );
       }).toList(),
       ),

        ),
      ],
    );
  }
}
