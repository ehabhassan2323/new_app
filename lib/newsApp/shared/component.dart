import 'package:flutter/material.dart';

Widget buildArticleItem ( articles ,context ) => Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 130,
        height: 130,
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(15),
            image:DecorationImage(
                image: NetworkImage("${articles['urlToImage']}"),
                fit: BoxFit.cover
            )
        ),
      ),
      SizedBox(width: 5,),
      Expanded(
        child: Container(
          height: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text(("${articles['title']}"),
                  style:Theme.of(context).textTheme.bodyText1,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text("${articles['publishedAt']}",
                style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.grey),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    ],
  ),
);