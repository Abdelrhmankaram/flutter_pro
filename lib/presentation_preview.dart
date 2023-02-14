import 'dart:async';

import 'package:flutter/material.dart';

//first one for the selectable text
class preview1 extends StatefulWidget {
  @override
  State<preview1> createState() => _preview1State();
}
class _preview1State extends State<preview1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children:const [
            SizedBox(height: 100),
            Text(
              'This is a non selectable text',
              style: TextStyle(fontSize: 30,),
            ),
            SizedBox(height: 50),
            SelectableText(
              'This a selectable text',
              style: TextStyle(fontSize: 30)
            )
          ],
        ),
      ),
    );
  }
}


//second one for the timer picker
class preview2 extends StatefulWidget {
  @override
  State<preview2> createState() => _preview2State();
}

class _preview2State extends State<preview2> {
  TimeOfDay time= TimeOfDay(
      hour: DateTime.now().hour,
      minute: DateTime.now().minute
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${(time.hour%12).toString().padLeft(2,'0')}:${(time.minute).toString().padLeft(2,'0')}",
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
                onPressed: () async {
                  TimeOfDay? newTime = await showTimePicker(
                  context:context ,
                  initialTime: time
              );
              if(newTime==null)return;
              setState(() => time=newTime);
            }, child:const  Text('Select Time')
            )
          ],
        ),
      ),
    );
  }
}

