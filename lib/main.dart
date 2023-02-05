import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
      SingleChildScrollView(
        child: Container(decoration:BoxDecoration(color:Colors.deepPurple) ,height: 857,
          child: Center(
              child: Column(

                  children:[
                    Container(margin: EdgeInsets.only(top:40),
                      child:
                      Transform.rotate(angle:175,
                        child: Text("E",style: TextStyle(fontSize: 150,fontWeight: FontWeight.w900,color: Colors.amber,),
                        ),
                      ),
                    )
                    ,Container(padding: EdgeInsets.only(bottom: 20),child: Text("ECORP",style: TextStyle(fontSize: 40,letterSpacing: 7,color: Colors.amber,))),
                    Container(decoration: BoxDecoration(boxShadow:[
                      BoxShadow(color: Colors.black87,blurRadius: 40.0,offset:Offset(-5,10))],color: Colors.white,borderRadius: BorderRadius.circular(20),
                    ),width: 400,
                      margin: EdgeInsets.only(left:40,right: 40),
                      child:
                      Column(
                        children: [
                          Container(width: 300,margin: EdgeInsets.only(top:30,bottom:10,right: 10,left: 10),
                              child: TextFormField(decoration:
                              InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                                  hintText: "Email",prefixIcon: Icon(Icons.account_circle_rounded)))),
                          Container(width: 300,margin: EdgeInsets.only(top:5,right: 10,left: 10),
                              child: TextFormField(decoration:
                              InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                                  hintText: "password",prefixIcon: Icon(Icons.lock),suffixIcon:Icon(Icons.remove_red_eye)))),
                          TextButton(onPressed: (){}, child:Text("Forgot password?",style: TextStyle(fontSize:17,color: Colors.black54),)),
                          Container(margin: EdgeInsets.all(0),decoration: BoxDecoration(boxShadow:[
                            BoxShadow(color: Colors.black26,blurRadius: 4.0,offset:Offset(0,5))]),
                            child: ElevatedButton(style: ElevatedButton.styleFrom(
                                fixedSize: Size(120, 40),shadowColor: Colors.black,backgroundColor:Colors.deepPurple

                            ),onPressed: (){}, child: Text("LOGIN",style:TextStyle(fontSize: 20),),),
                          ),
                          TextButton(onPressed: (){}, child:Text("SIGNUP",style: TextStyle(fontSize:17,color: Colors.black54))
                          )],
                      ),
                    ),
                  ])

          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}