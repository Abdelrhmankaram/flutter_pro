// ignore_for_file: camel_case_types

import 'package:flutter/material.dart ';
import 'Profile_Card.dart';
import 'LoginScreen.dart';
import 'presentation_preview.dart';
void main(){
  runApp(const my_app());
}

class  my_app extends StatelessWidget{
  const my_app({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: Profile(),
    );
  }

}