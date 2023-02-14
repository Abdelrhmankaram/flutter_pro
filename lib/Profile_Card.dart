import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io';
class Profile extends StatelessWidget
{
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: 150,
              left: 48,
              child: Container(
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(255, 0, 0, 1),
                        Color.fromRGBO(225, 0, 0, 1),
                        Color.fromRGBO(220, 0, 0, 1),
                        Color.fromRGBO(175, 0, 0, 1),

                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0, 0.2, 0.5, 0.8]
                  ),
                  borderRadius: BorderRadius.circular(60),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 310,
                left: 132,
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100)
                  ),
                ),
            ),
            Positioned(
              top: 313,
              left: 136,
              child: Container(
                width: 122,
                height: 122,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                clipBehavior: Clip.antiAlias,
                child: const Image(
                  image: NetworkImage('https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-1/329569639_3506970309547757_4334618007498304621_n.jpg?stp=dst-jpg_p240x240&_nc_cat=105&ccb=1-7&_nc_sid=7206a8&_nc_ohc=eGglOLrHG-AAX8Joive&_nc_ht=scontent-hbe1-1.xx&oh=00_AfCkUchUsElTt0kh6UYC-8STbW5zYEkTaaxrRv4qyGpmFQ&oe=63EFFD36'),),
                ),
              ),
            const Positioned(
              top: 450,
              left: 108,
              child: Text('Abdelrhman Karam',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,fontFamily: AutofillHints.name),)
            ),
            const Positioned(
                top: 485,
                left: 155,
                child: Text(textAlign: TextAlign.center,'Product Design',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
            ),
            Positioned(
                top: 510,
                left: 95,
                child: Container(
                  width: 220,
                  height: 2,
                  decoration: BoxDecoration(
                      color:Colors.redAccent[700],
                      borderRadius: BorderRadius.circular(30)
                  ),
                ),
            ),
            Positioned(
                top: 490,
                left: 95,
                child:  Container(alignment: Alignment.center,height: 100,width: 220,
                  child: const Text("i choose the product design track because i love solving visual problems using UI/UX designs"
                      ,style: TextStyle(fontSize:11),textAlign: TextAlign.center,maxLines: 4),
                ),
            ),
            Positioned(
              top: 560,
              left: 132,
              child: Row(mainAxisAlignment: MainAxisAlignment.center,mainAxisSize:MainAxisSize.max ,
                children: [
                  IconButton(onPressed: (){}, icon:Icon(Icons.facebook,color: Colors.redAccent[700],)),
                  IconButton(onPressed: (){}, icon:Icon(Icons.snapchat,color: Colors.redAccent[700],)),
                  IconButton(onPressed: (){}, icon:Icon(Icons.whatsapp,color: Colors.redAccent[700],)),
                ],
              )
            ),
          ],
      ),
      ),
    );
  }
}