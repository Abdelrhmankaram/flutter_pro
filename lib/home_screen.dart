import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io';
int i=0;
class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading: const Icon(
            Icons.menu,
        ),
        title: const Text(
            'Abdelrhman'
        ),
        actions: [
          IconButton(
              icon: const Icon(
                  Icons.notification_important,color: Colors.black
              ),
                onPressed: () {
                if (kDebugMode) {
                  print('notification clicked');
                }
                },
          ),
          IconButton(
            icon: const Icon(Icons.facebook,color: Colors.black),
            onPressed: (){
              if (kDebugMode) {
                print('facebook clicked');
              }
            },
          ),
        ],
        elevation: 20.0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(alignment: Alignment.center,),
          Text('${i}'),
          SizedBox(height: 50,),
          IconButton(onPressed: (){i++;
            print("plus pressed");}, icon: Icon(Icons.plus_one)),
        ],
      )
    );
  }
}
void on_noti()
{
  print('notification clicked');
}