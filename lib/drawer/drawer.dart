import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ihome/screens/HomeScreen.dart';


class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 280,
          decoration: BoxDecoration(
            color: Colors.brown[400]!.withOpacity(.8),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40)),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 85),
                height: 75,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/me.jpg'),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Ehab hassan',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'phone : 01067232357',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),

        Column(
          children: [
            drawItem(
              onTapv: ()
              {

              },
              icon: (Icons.home) ,
              name: 'Store',
              subTit: 'All Product Here'
            ),
            SizedBox(height: 15,),
            drawItem(
              onTapv:()
              {

              },
                icon: (Icons.store_mall_directory) ,
                name: 'My Product',
                subTit: 'MY Product'
            ),


          ],
        ),
      ],
    );
  }
}


Widget drawItem({
  required IconData icon ,
  required String name ,
  required final Function onTapv ,
  required String subTit ,


})
{
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(),
            borderRadius: BorderRadius.circular(30)
        ) ,
      child: ListTile(
        horizontalTitleGap: 30,
        leading: Icon(icon, size: 35, color: Colors.brown,),
        title: Text(name,style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400,color: Colors.brown),),
        onTap: onTapv(),
        subtitle: Text(subTit),
      ),
    ),
  );

}