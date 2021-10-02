import 'package:flutter/material.dart';
import 'package:ihome/newsApp/provider/states.dart';
import 'package:ihome/newsApp/shared/component.dart';
import 'package:provider/provider.dart';



class BusinessScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    var list = Provider.of<States>(context).business;

      return ListView.separated(
        physics: BouncingScrollPhysics(),
          itemBuilder: (context,index) =>  buildArticleItem(list[index],context),
          separatorBuilder: (context,index)=>Divider(color: Colors.grey,height: 1,),
          itemCount: list.length,
      );
  }
}
