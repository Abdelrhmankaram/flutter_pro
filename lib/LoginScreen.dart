import 'package:flutter/material.dart';

class Login_Screen extends StatelessWidget {
  @override
  var emailControler=TextEditingController();
  var passwordControler=TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                'Login',
                style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
              ),
              SizedBox.fromSize(size: const Size(0, 80),),
              TextFormField(
                controller: emailControler,
                onFieldSubmitted: (String value){
                  print(value);
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Enter Your Email',
                ),
              ),
              SizedBox.fromSize(size: const Size(0,20)),
              TextFormField(
                controller: passwordControler,
                onFieldSubmitted: (String value){
                  print(value);
                },
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                  labelText: 'Enter Your Password',
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              SizedBox.fromSize(size: const Size(0,20)),
              Center(
                child: Container(
                  color: Colors.blue
                  ,
                  width: 200,
                  child: Center(
                    child: MaterialButton(
                      onPressed: (){
                        print("The Email is: ${emailControler.text}");
                        print("The Password is: ${passwordControler.text}");
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
