import 'package:flutter/material.dart';
import 'package:ihome/newsApp/provider/states.dart';
import 'package:ihome/newsApp/screen/setting.dart';
import 'package:ihome/screens/search.dart';
import 'package:provider/provider.dart';
import 'science.dart';
import 'sport.dart';

import 'business.dart';

class Tasks extends StatelessWidget {
  List<Widget> screens = [
    BusinessScreen(),
    SportScreen(),
    ScienceScreen(),
    Setting()
  ];
    var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<States>(
      create: (_) => States()..getBusiness(),
      child: Scaffold(
        key: scaffoldKey,
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(  Provider.of<States>(context).fabIcon),
        //   onPressed: (){
        //
        //     DioHelper.getData(
        //       url: 'v2/top-headlines',
        //       query: {
        //         'country':'us',
        //         'category':'business',
        //         'apiKey':'aec8d59faaef4ccaa38aa39761c9dfba',
        //       },
        //     ).then((value)
        //     {
        //       print(value.data['articles'][0]['title']);
        //     }).catchError((error){
        //       print('error is ${error.toString()}');
        //     });
        //   },
        //
        // ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: Provider.of<States>(context).currentIndex,
          onTap: (index) {
            Provider.of<States>(context, listen: false).changeButton(index);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'business'),
            BottomNavigationBarItem(
                icon: Icon(Icons.cloud_done), label: 'sport'),
            BottomNavigationBarItem(
                icon: Icon(Icons.archive_outlined), label: 'science'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'setting'),
          ],
        ),
        appBar: AppBar(
          title: Text('News App'),
          actions: [
            IconButton(
                onPressed:()
                {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Search()));
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 25,
                )),
            IconButton(
                onPressed: ()
                {
                 Provider.of<States>(context,listen: false).changeAppMode();
                },
                icon: Icon(
                  Icons.brightness_4_outlined,
                  color: Colors.black,
                  size: 25,
                )),

          ],
        ),
        body: screens[Provider.of<States>(context).currentIndex],
      ),
    );
  }
}
