import 'package:flutter/material.dart';
import 'package:ihome/newsApp/remote/cashHelper.dart';
import 'package:ihome/newsApp/remote/dioHelper.dart';



class States with ChangeNotifier {
  int currentIndex = 0;
  IconData fabIcon = Icons.edit ;
  bool isButtonShown= false ;
  late bool appMod= false;
   String? selectedLang  ;


  void changeButton(int index)
  {
    currentIndex = index;
    notifyListeners();
  }

  void changeFab()
  {
    isButtonShown= false ;
    fabIcon= Icons.edit ;
    notifyListeners();
  }

  void changeX()
  {
    isButtonShown= true ;
    fabIcon= Icons.add ;
    notifyListeners();
  }

   List<dynamic> business= [];

  void getBusiness()
  {
    DioHelper.getData(
      url: 'v2/top-headlines',
      query: {
        'country':'us',
        'category':'business',
        'apiKey':'aec8d59faaef4ccaa38aa39761c9dfba',
      },
    ).then((value)
    {
      business = value.data['articles'];
    }).catchError((error){
      print('error is ${error.toString()}');
    });
    notifyListeners();
  }

  void changeAppMode()
  {
         appMod=!appMod;
          notifyListeners();
  }

       selectedLanguage(value)
     {

           selectedLang=value ;
           CashHelper.putString(key: 'language', value: value).then((value)
           {
             print(value);
           });


       notifyListeners();
     }

 List<dynamic> search = [] ;
  void getSearch(String value)
  {
    DioHelper.getData(

      url: 'v2/everything',
      query: {
        'q':'$value',
        'apiKey':'aec8d59faaef4ccaa38aa39761c9dfba',
      },
    ).then((value)
    {
      search = value.data['articles'];
    }).catchError((error){
      print('error is ${error.toString()}');
    });
    notifyListeners();
  }

}
