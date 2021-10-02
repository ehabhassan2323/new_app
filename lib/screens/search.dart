import 'package:flutter/material.dart';
import 'package:ihome/newsApp/provider/states.dart';
import 'package:ihome/newsApp/shared/component.dart';
import 'package:provider/provider.dart';

class Search extends StatelessWidget {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var list = Provider.of<States>(context).search;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              onChanged: (value) {
                Provider.of<States>(context,listen: false).getSearch(value);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return ' please search  must not empty';
                } else {
                  return null;
                }
              },
              controller: searchController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                labelText: 'Search',
                labelStyle: TextStyle(color: Colors.blueGrey[900]),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context,index) =>  buildArticleItem(list[index],context),
              separatorBuilder: (context,index)=>Divider(color: Colors.grey,height: 1,),
              itemCount: list.length,
            ),
          )
        ],
      ),
    );
  }
}
