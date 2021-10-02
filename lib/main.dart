import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ihome/newsApp/remote/cashHelper.dart';
import 'package:ihome/newsApp/remote/dioHelper.dart';
import 'newsApp/provider/states.dart';
import 'newsApp/screen/newsapp.dart';
import 'package:provider/provider.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
   await CashHelper.init();
   String language = CashHelper.getString(key: 'language') ;
   print(language);
   runApp(MyApp( language)) ;
}

class MyApp extends StatelessWidget {


final String language ;

   MyApp(this.language);


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<States>(
      create: (context)=>States()..selectedLanguage(language),
      builder: (context,_)
      {
       return MaterialApp(
          themeMode:  ThemeMode.system,
          darkTheme: ThemeData(
              textTheme: TextTheme(
                bodyText1:  TextStyle(
                    fontSize: 18 ,
                    color: Colors.white
                ),
              ),
              primarySwatch: Colors.deepOrange,
              scaffoldBackgroundColor: HexColor('333737'),
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor:  HexColor('333737'),
              ),
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                selectedItemColor: Colors.deepOrangeAccent,
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: Colors.grey,
                backgroundColor: HexColor('333737'),
              ),
              appBarTheme: AppBarTheme(
                backwardsCompatibility: false,
                systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarColor: HexColor('333737'),
                    statusBarIconBrightness: Brightness.light
                ),
                backgroundColor: HexColor('333737'),
                elevation: 0,
                centerTitle: true,
                titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 25,

                ),
              )
          ),
          theme: ThemeData(
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor:  Colors.deepOrangeAccent,
              ),
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                selectedItemColor: Colors.deepOrangeAccent,
                type: BottomNavigationBarType.fixed,

              ),
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: AppBarTheme(
                iconTheme: IconThemeData(
                  color: Colors.grey[900]
                ),
                backwardsCompatibility: false,
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Colors.white,
                ),
                backgroundColor: Colors.white,
                textTheme: TextTheme(
                    headline6: TextStyle(

                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25
                    )
                ),
                elevation: 0,
                centerTitle: true,
                titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              )

          ) ,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home: ChangeNotifierProvider<States>(
              create: (_) => States(),
              child: Tasks()
          ),
        );
      },

    );
  }
}
